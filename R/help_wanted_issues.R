source("R/utils.R")

new_tbl_github_issues <- function(url = character(0),
                                  title = character(0),
                                  type = character(0),
                                  labels = character(0),
                                  label_colors = character(0),
                                  font_colors = character(0),
                                  created_at = character(0),
                                  updated_at = character(0),
                                  empty = FALSE
                                  ) {

  stopifnot(rlang::is_scalar_logical(empty))

  if (empty) {
    stopifnot(rlang::is_character(url, n = 0L))
    stopifnot(rlang::is_character(title, n = 0L))
    stopifnot(rlang::is_character(type, n = 0L))
    stopifnot(rlang::is_character(labels, n = 0L))
    stopifnot(rlang::is_character(label_colors, n = 0L))
    stopifnot(rlang::is_character(font_colors, n = 0L))
    stopifnot(rlang::is_character(created_at, n = 0L))
    stopifnot(rlang::is_character(updated_at, n = 0L))
  } else {
    stopifnot(rlang::is_scalar_character(url))
    stopifnot(rlang::is_scalar_character(title))
    stopifnot(rlang::is_scalar_character(type))
    stopifnot(rlang::is_character(labels))
    stopifnot(rlang::is_character(label_colors))
    stopifnot(rlang::is_character(font_colors))
    stopifnot(rlang::is_scalar_character(created_at))
    stopifnot(rlang::is_scalar_character(updated_at))
  }

  tibble::tibble(
    url,
    title,
    type,
    labels,
    label_colors,
    font_colors,
    created_at,
    updated_at
  )

}

get_gh_issues_raw <- function(owner, repo, labels) {
  if (!is.null(labels)) {
    stopifnot(identical(length(labels), 1L))
  }
  gh::gh(
    "GET /repos/:owner/:repo/issues",
    owner = owner,
    repo = repo,
    labels = labels
  )
}

extract_issue_info <- function(issues) {

  if (identical(length(issues), 0L)) {
    return(new_tbl_github_issues(empty = TRUE))
  }

  issues %>%
    purrr::map_df(function(.x) {
      new_tbl_github_issues(
        url = .x$html_url,
        title = .x$title,
        type = dplyr::case_when(
          grepl("/pull/[0-9]+$", .x$html_url) ~ "PR",
          TRUE ~ "issue"
        ),
        labels = purrr::map_chr(.x$labels, "name") %>%
          paste(., collapse = ","),
        label_colors = purrr::map_chr(.x$labels, "color") %>%
          paste0("#", ., collapse = ","),
        font_colors = purrr::map_chr(.x$labels, "color") %>%
          paste0("#", .) %>%
          font_color(.) %>%
          paste(., collapse = ","),
        created_at = .x$created_at,
        updated_at = .x$updated_at
      )
    })
}

get_gh_issues <- function(owner, repo, labels) {
  get_gh_issues_raw(owner, repo, labels) %>%
    extract_issue_info() %>%
    dplyr::mutate(
      org = owner,
      repo = repo,
      full_repo = paste0(owner, "/", repo)
    )
}

keep_opted_in <- function(orgs) {

  # at_opted_in <- airtabler::airtable(
  #   base = "appeZJGnGremE1MYm",
  #   tables = "Repositories"
  # )

  # opted_in <- at_opted_in$Repositories$select_all() %>%
  #   dplyr::mutate(lesson_program = tolower(lesson_program))
  #
  # dplyr::left_join(
    # orgs, opted_in,
    # by = c(
      # "carpentries_org" = "lesson_program",
      # "repo" = "repository"
    # )
  # ) %>%
  # dplyr::filter(display_help_wanted)
  # message(sQuote(orgs))
  orgs
}

keep_other_repos <- function(orgs) {
  other_repos <- tibble::tribble(
    ~carpentries_org, ~repo,
    "carpentries-incubator", "hpc-intro",
    "hpc-carpentry", "hpc-carpentry.github.io",
  )

  dplyr::inner_join(
    orgs, other_repos,
    by = c("carpentries_org", "repo")
  )
}


list_organizations <- c(
  "HPC Carpentry" = "hpc-carpentry"
  # would like to include the incubator but need to filter the repo according to topic
  # "The Carpentries Incubator" = "carpentries-incubator"
)

list_help_wanted <- purrr::imap_dfr(
  list_organizations,
  function(.x, .y) {
    orgs <- get_list_repos(
      .x, ignore_archived = TRUE,
      ignore_pattern = "^\\d{4}-\\d{2}-\\d{2}"
    )

    lessons <- orgs %>%
      keep_opted_in()

    other_repos <- orgs %>%
      keep_other_repos()

    dplyr::bind_rows(
      lessons,
      other_repos
    )  %>%
      dplyr::distinct(carpentries_org, repo, .keep_all = TRUE) %>%
      purrr::pmap_df(function(carpentries_org, repo, description, ...) {
        message("  repo: ", repo, appendLF = FALSE)
        res <- purrr::map_dfr(
          c("help wanted",  "good first issue"),
          ~ get_gh_issues(
            owner = carpentries_org, repo = repo, labels = .x
          )
        ) %>%
          dplyr::distinct(url, .keep_all = TRUE)
        message(" -- n issues: ", nrow(res))
        res %>%
          dplyr::mutate(
            description = description,
            ## remove GitHub emoji from repo description
            clean_description = gsub(":([a-z0-9_]+):", "", description),
            org_name = .y)
      })
  }
)


jsonlite::write_json(list_help_wanted, "_data/help_wanted_issues.json")

source("feeds/utils.R")

LIFE_CYCLE_TAGS <- c("pre-alpha", "alpha", "beta", "stable")
# The tags below will be filtered out in the json
COMMON_TAGS <- c(
  "carpentries",
  "carpentries-incubator",
  "carpentries-lesson",
  "carpentryconnect",
  "data-carpentry",
  "hpc-carpentry",
  "datacarpentry",
  "education",
  "lesson"
)

check_missing_repo_info <- function(.d, field) {
  if (any(!nzchar(.d[[field]]))) {
    paste0(
      "Missing repo ", sQuote(field), " for: \n",
      paste0("  - ", .d$repo_url[!nzchar(.d[[field]])], collapse = "\n"),
      "\n"
    )
  }
}

check_repo_info <- function(.d, fields) {
  tryCatch({
    out <- purrr::map(
      fields, ~ check_missing_repo_info(.d, .)
    )
    msgs <- purrr::keep(out, ~ !is.null(.))

    if (length(msgs)) {
      stop(msgs, call. = FALSE)
    }

    cli::cli_alert_success("No issues detected!")
  },
  error = function(err) {
    stop(err$message, call. = FALSE)
  })
}

make_community_lessons_feed <- function(path, ...) {
  jsc <- get_org_topics("FZJ-JSC")
  frobnitzem <- get_org_topics("frobnitzem")
  res <- dplyr::bind_rows(jsc, frobnitzem) %>%
    dplyr::select(-private) %>%
    dplyr::filter(grepl("hpc-carpentry", github_topics)) %>%
    dplyr::filter(grepl("lesson", github_topics)) %>%
    extract_tag(
      life_cycle_tag,
      LIFE_CYCLE_TAGS,
      approach = "include",
      allow_multiple = FALSE,
      allow_empty = FALSE
    ) %>%
    extract_tag(
      lesson_tags,
      COMMON_TAGS,
      approach = "exclude",
      allow_multiple = TRUE,
      allow_empty = TRUE
    )

  ## checks
  check_repo_info(res, c("description", "rendered_site"))

  res %>%
    jsonlite::write_json(path = path)

}

make_community_lessons_feed("_data/other_lessons.json")

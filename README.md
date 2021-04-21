![check, build, deploy hpc-carpentry.org](https://github.com/hpc-carpentry/hpc-carpentry.github.io/workflows/check,%20build,%20deploy%20hpc-carpentry.org/badge.svg)

# The HPC Carpentry Website

This is the repository for the [HPC Carpentry website](http://www.hpc-carpentry.org) (and directly based on 
the [Carpentries website](https://carpentries.org)).
Please submit additions and fixes as pull requests to [our GitHub repository](https://github.com/hpc-carpentry/hpc-carpentry.github.io).

*   [Setup](#setup)
*   [Previewing](#previewing)
*   [Development](#development)
    *   [Write a Blog Post](#blog)
    *   [Create a New Page](#page)
    *   [Add a Workshop](#workshop)
*   [The Details](#details)

Lessons are not stored in this repository:
please see the [HPC Carpentry lessons page](https://hpc-carpentry.org/lessons/), for links to the many individual lesson repositories.
You can find the official Carpentries lessons at [Software Carpentry lessons page](https://software-carpentry.org/lessons/), the [Data Carpentry lessons page](https://datacarpentry.org/lessons/), or the [Library Carpentry lessons page](https://librarycarpentry.org/lessons/).

> HPC Carpentry, like The Carpentries (Software, Data, and Library Carpentry), is an open project,
> and we welcome contributions of all kinds.
> By contributing,
> you are agreeing that The Carpentries may redistribute your work
> under [these licenses](http://software-carpentry.org/license/),
> and to abide by [our code of conduct](http://docs.carpentries.org/topic_folders/policies/code-of-conduct.html).

## Setup <a name="setup"></a>

The website uses [Jekyll](http://jekyllrb.com/), a static website generator written in Ruby.
You need to have Version 2.7.1 or higher of Ruby and the package manager Bundler.
(The package manager is used to make sure you use exactly the same versions of the Ruby Gems as we do.)
After checking out the repository, please run:

```
$ bundle install
```

to install Jekyll and the software it depends on.
You may consult [Using Jekyll with Pages](https://help.github.com/articles/using-jekyll-with-pages/) for further instructions.

## Previewing <a name="previewing"></a>

Please do **not** use `jekyll build` or `jekyll serve` directly to build or view the website.
Instead, you should use the following commands:

*   `make` or `make commands`: list available commands.
*   `make data`: (optionally) generate the dynamic data (see [Data Files](#data) to see the requirements for this step) 
*   `make serve`: build files locally and run a server at [http://0.0.0.0:4000/](http://0.0.0.0:4000/) for viewing.
    This is the best way to preview the site.
*   `make site`: build files locally, but do not serve them dynamically.
*   `make clean` removes the `_site` directory and any Emacs editor backup files littering the source directories.

The [details](#details) describes a few more advanced commands as well.


## Development <a name="development"></a>

<a name="blog"></a>
To **write a blog post**,
create a file called `_posts/YYYY/MM/YYYY-MM-DD-some-title.html` or  `_posts/YYYY/MM/YYYY-MM-DD-some-title.md`
(for HTML and Markdown respectively).
YYYY is the 4-digit year of the post, MM the 2-digit month, and DD the 2-digit day;
`some-title` can be any hyphenated string of words that do not include special characters such as quotes.
Please do *not* use underscores or periods in the names.
When published,
your blog post will appear as `https://hpc-carpentry.org/blog/YYYY/MM/some-title.html`.

The YAML header of a blog post must look like this:

~~~
---
layout: page
authors: ["Your Name"]
title: "A Title-Cased Title for the Post"
date: YYYY-MM-DD
time: "hh:mm:ss"
category: ["Some Category", "Some Other Category"]
---
~~~

where `YYYY-MM-DD` is replaced by the post's date and `hh:mm:ss` by the post's time.
Note that the time *must* be quoted so that the colons it contains do not confuse Jekyll's YAML parser.
Note also that `authors` is a list---if the post has more than one author,
please format the list like this:

~~~
...
authors: ["First Author", "Second Author", "Third Author"]
...
~~~

rather than running all the authors' names together in one long string.

<a name="page"></a>
To **create a new page**,
add a file to the `pages` directory.
This can be written in either Markdown or HTML,
and must have the following YAML header:

~~~
layout: page-fullwidth
permalink: /some/path/
title: Title in Title Case
~~~

You must then also add the page to `_data/navigation.yml`,
which is used to generate the site's pull-down navigation menu.

<a name="workshop"></a>
To **add a workshop**,
fill in the [workshop request form](https://amy.carpentries.org/forms/workshop/) online.
You should fill in this form even for self-organized workshops in order to get your workshop into the Carpentries database.

## The Details <a name="details"></a>


### How is the site built and rendered?

The website is build with a GitHub Actions (see [this file](https://github.com/hpc-carpentry/hpc-carpentry.github.io/blob/main/.github/workflows/build-and-deploy.yml)).

Each time a commit is pushed to the default branch of the repository (`main`)
and every 24 hours, the GitHub Action does the following:

1. it validates the YAML headers of all the pages and blog posts
1. it builds the website 1, first generating the dynamic content on the
   site (list of lessons, list of "Help Wanted" issues, etc.). For details on
   how these data files can be generated see the next section.

### Data Files <a name="data"></a>

The data files for the workshops and the instructors are generated by our
GitHub Action using the scripts found in the `feeds` folder.

To generate these feeds locally, you can use
```
make data
```
To successfully execute this step you need an appropriate R environment (with
packages `gh`, `jsonlite` and `purrr`) and a
[GitHub PAT](https://docs.github.com/en/github/authenticating-to-github/creating-a-personal-access-token)
(Personal Authentication Token) set as an environment variable (`GITHUB_PAT`) with
appropriate priviledges to read GitHub topics and issues for all our repositories
(you should *not* need to set any scopes, the token is just so that GitHub does
not limit your API usage).


### Styles

The files in the `_sass` and `assets` directories control the appearance of this site.

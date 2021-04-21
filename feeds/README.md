# HPC Carpentry Feeds

The files in this directory are based off of [carpentries/feeds.carpentries.org](
https://github.com/carpentries/feeds.carpentries.org) (MIT licenced). 
If they require an update you should check that repository first.

## Dependencies

These [R](https://www.r-project.org) scripts depend on the following libraries:
* [purrr](https://cran.r-project.org/web/packages/purrr/)
* [gh](https://cran.r-project.org/web/packages/gh/)
* [jsonlite](https://cran.r-project.org/web/packages/jsonlite/)
* [tibble](https://cran.r-project.org/web/packages/tibble/)
* [dplyr](https://cran.r-project.org/web/packages/dplyr/)
* [purrrlyr](https://cran.r-project.org/web/packages/purrrlyr/)

These are all packaged for Debian and derivatives (Ubuntu, etc.). To isntall:

```bash
sudo apt install r-cran-purrr r-cran-gh r-cran-jsonlite r-cran-tibble r-cran-dplyr r-cran-purrrlyr
```

## EESSI Project

For CI platforms, installing a full R environment is time-consuming. A faster
alternative is to use the [EESSI](https://eessi.github.io/docs/) filesystem overlay.

There is a GitHub Action for this: `eessi/github-action-eessi`. This is used in
our `/.github/workflows/build-and-deploy.yml`.

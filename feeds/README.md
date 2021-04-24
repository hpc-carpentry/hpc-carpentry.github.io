# HPC Carpentry Feeds

The files in this directory are based off of [carpentries/feeds.carpentries.org](
https://github.com/carpentries/feeds.carpentries.org) (MIT licenced). 
If they require an update you should check that repository first.

## Dependencies

### R

These [R](https://www.r-project.org) scripts depend on the following libraries:
* [colorspace](https://cran.r-project.org/web/packages/colorspace/)
* [dplyr](https://cran.r-project.org/web/packages/dplyr/)
* [gh](https://cran.r-project.org/web/packages/gh/)
* [jsonlite](https://cran.r-project.org/web/packages/jsonlite/)
* [purrr](https://cran.r-project.org/web/packages/purrr/)
* [tibble](https://cran.r-project.org/web/packages/tibble/)

If you have a Conda environment for local development and testing, install the
packages:

```bash
conda install -c conda-forge r-colorspace r-dplyr r-gh r-jsonlite r-purrr r-tibble
```

### GitHub

GitHub may limit your API access if you are not authenticated. To avoid this,
generate a basic [Personal Access Token](
https://docs.github.com/en/github/authenticating-to-github/creating-a-personal-access-token)
with *no roles* associated (not even "repo"). Copy the token, and export it
under the new environment variable `GITHUB_PAT`.

### EESSI Project

For CI platforms, installing a full R environment is time-consuming. A faster
alternative is to use the [EESSI](https://eessi.github.io/docs/) filesystem
overlay.

There is a GitHub Action for this: `eessi/github-action-eessi`. This is used in
our `/.github/workflows/build-and-deploy.yml`.

## Build

To build the data feeds locally, from the top-level directory of this
repository, run

```bash
make data
```

This will create (or update) JSON files under `_data` with the latest content.

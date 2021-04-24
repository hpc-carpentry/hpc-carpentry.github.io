## Settings

JEKYLL=bundle config --local set path .vendor/bundle && bundle install && bundle update && bundle exec jekyll

all : commands

## commands   : show all commands.
commands :
	@grep -E '^##' Makefile | sed -e 's/## //g'

## serve      : run a local server.
serve :
	${JEKYLL} serve --config _config.yml,_config_dev.yml --future

## site       : build files but do not run a server.
site :
	${JEKYLL} build

## install    : install missing Ruby gems using bundle.
install :
	bundle install

## lesson data  : pull lesson data from GitHub
# (requires GitHub PAT provided via GITHUB_PAT env var)
data:
	R -q -e "source('feeds/hpc-carpentry_lessons.R')"
## help-wanted: list of issues that have the label "help wanted"
	R -q -e "source('feeds/help_wanted_issues.R')"

#-------------------------------------------------------------------------------

## clean      : clean up junk files.
clean :
	rm -rf _site
	rm -rf .sass-cache
	find . -name '*~' -exec rm {} \;
	find . -name .DS_Store -exec rm {} \;

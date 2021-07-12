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

data : lesson_data event_data

## lesson data  : pull lesson data from GitHub
# (requires GitHub PAT provided via GITHUB_PAT env var)
lesson_data:
	R -q -e "source('feeds/hpc-carpentry_lessons.R')"
## help-wanted: list of issues that have the label "help wanted"
	R -q -e "source('feeds/help_wanted_issues.R')"

## event data  : pull our event data from our Google Form (which is saved in a spreadsheet)
# - we need to pull a particular sheet from the google doc so that we retain our own headings
#   (sheet contents mirror form responses, but only first 300 entries!)
# - our event data needs to be "warmed up" as it is pulled from another sheet, check for this
#   by looking for "Loading..." in the downloaded file (and retry if it exists)
# - take our event data and turn it into json
event_data:
	bash feeds/get_workshops_data.sh _data/workshops.tsv
	python feeds/workshops.py

#-------------------------------------------------------------------------------

## clean      : clean up junk files.
clean :
	rm -rf _site
	rm -rf .sass-cache
	find . -name '*~' -exec rm {} \;
	find . -name .DS_Store -exec rm {} \;

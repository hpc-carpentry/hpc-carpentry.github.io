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
# get our event data and turn it into json
event_data:
	curl -L -o _data/workshops.tsv https://docs.google.com/spreadsheets/d/16xY1AziEqE11Aq26aMwlyoJgpkibWb0425KFqbchaiE/export?format=tsv
	python feeds/workshops.py

#-------------------------------------------------------------------------------

## clean      : clean up junk files.
clean :
	rm -rf _site
	rm -rf .sass-cache
	find . -name '*~' -exec rm {} \;
	find . -name .DS_Store -exec rm {} \;

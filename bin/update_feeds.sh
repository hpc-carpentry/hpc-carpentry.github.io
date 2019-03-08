#!/bin/bash

REPO_ORG=carpentries
REPO_NAME=carpentries.org
GITHUB_PAT_USER=fmichonneau # user who generated the GITHUB PAT used here

cd .. &&
    rm -rf amy-feeds/ &&
    git clone https://github.com/carpentries/amy-feeds.git amy-feeds &&
    cd amy-feeds &&
    make workshops &&
    find _data -name '*_plain.json' -exec cp {} ../"$REPO_NAME"/_data/ &&
    make instructors &&
    cp _data/amy_airports.json ../"$REPO_NAME"/_data/ &&
    cp _data/publish_instructors.json ../"$REPO_NAME"/_data

cd ../"$REPO_NAME"  || exit

git remote add deploy https://"$GITHUB_PAT_USER":"$GITHUB_PAT"@github.com/"$REPO_ORG"/"$REPO_NAME".git

git checkout gh-pages
git add _data/*_plain.json
git commit -m "[ci skip] update workshop and instructor data"
git push deploy gh-pages

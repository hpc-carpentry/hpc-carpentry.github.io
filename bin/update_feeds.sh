#!/bin/bash

REPO_ORG=carpentries
REPO_NAME=carpentries.org
GITHUB_PAT_USER=fmichonneau # user who generated the GITHUB PAT used here



cd .. &&
    mkdir feed-data &&
    cd feed-data &&
    curl --remote-name-all http://feeds.carpentries.org/{all,DC,LC,SWC,TTT}_{past,upcoming}_workshops_plain.json &&
    curl --remote-name-all http://feeds.carpentries.org/all_workshops_plain.json &&
    curl --remote-name-all http://feeds.carpentries.org/amy_airports.json &&
    curl --remote-name-all http://feeds.carpentries.org/publish_instructors.json &&
    find . -name '*.json' -exec cp {} ../"$REPO_NAME"/_data/ \;

cd ../"$REPO_NAME"  || exit

git remote add deploy https://"$GITHUB_PAT_USER":"$GITHUB_PAT"@github.com/"$REPO_ORG"/"$REPO_NAME".git

git checkout gh-pages
git add _data/*.json
git commit -m "[ci skip] update workshop and instructor data"
git push deploy gh-pages

rm -rf ../feed-data

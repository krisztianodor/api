#!/bin/bash
hugo --destination "/tmp/igdb-api"
if git checkout gh-pages; then
    rm -rf *
    cp -rf /tmp/igdb-api/* .
    git commit -m "Derp"
    git push
    git checkout master
fi

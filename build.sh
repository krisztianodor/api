#!/bin/bash
rm -rf /tmp/igdb-api
hugo --destination "/tmp/igdb-api"
if git checkout gh-pages; then
    rm -rf *
    cp -rf /tmp/igdb-api/* .
    git add -A
    git commit -m "Derp"
fi

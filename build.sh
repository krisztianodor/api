#!/bin/bash

hugo
cp -rf public /tmp/igdb-api-public
git checkout gh-pages
rm -rf *
cp -rf /tmp/igdb-api-public/* .
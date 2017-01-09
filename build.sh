#!/bin/bash

hugo
rm -rf /tmp/igdb-api/*
cp -rf public /tmp/igdb-api
git checkout gh-pages
rm -rf *
cp -rf /tmp/igdb-api/public/* .
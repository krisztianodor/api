#!/bin/bash
wget https://github.com/gohugoio/hugo/releases/download/v0.18.1/hugo_0.18.1_macOS-64bit.zip
unzip hugo_0.18.1_macOS-64bit.zip
mv hugo_0.18.1_darwin_amd64/hugo_0.18.1_darwin_amd64 /usr/local/bin/hugo
brew link hugo
rm -f -r hugo_0.18.1_darwin_amd64
rm hugo_0.18.1_macOS-64bit.zip
hugo version
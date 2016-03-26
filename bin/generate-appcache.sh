#!/usr/bin/env bash
# usage: just run it, and it'll build a new www/manifest.appcache file
#

echo -e "CACHE MANIFEST\n# generated $(date)\nCACHE:" > manifest.appcache
find plugin lib img index.html css index.css js -type f | grep -v manifest.appcache | grep -v DS_Store | sed 's/www\///g' >> manifest.appcache

echo -e "\nNETWORK:\n*" >> manifest.appcache

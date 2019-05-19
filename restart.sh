#!/bin/bash

TRAVIS_REPO_SLUG_M=`echo $TRAVIS_REPO_SLUG | sed 's/\//\%2F/'`

body='{
"request": {
"branch":"master"
}}'

curl -s -X POST \
   -H "Content-Type: application/json" \
   -H "Accept: application/json" \
   -H "Travis-API-Version: 3" \
   -H "Authorization: token ${TRAVIS_TOKEN}" \
   -d "$body" \
https://api.travis-ci.org/repo/${TRAVIS_REPO_SLUG_M}/requests


curl -X POST -H "Travis-API-Version: 3" \
  -H "User-Agent: API Explorer" \
  -H "Authorization: token ${TRAVIS_TOKEN}" \
https://api.travis-ci.org/build/${TRAVIS_BUILD_ID}/cancel

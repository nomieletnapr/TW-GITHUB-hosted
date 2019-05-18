#!/bin/bash

sleep 60
echo $( date )": Restarting ..."

curl \
  -H "Travis-API-Version: 3" \
  -H "User-Agent: API Explorer" \
  -H "Authorization: token ${TRAVIS_TOKEN}" \
https://api.travis-ci.org/build/${TRAVIS_BUILD_ID}/cancel

curl \
  -H "Travis-API-Version: 3" \
  -H "User-Agent: API Explorer" \
  -H "Authorization: token ${TRAVIS_TOKEN}" \
https://api.travis-ci.org/build/${TRAVIS_BUILD_ID}/restart

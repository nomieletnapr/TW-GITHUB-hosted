#!/bin/bash

sleep 60
echo "build_id:" $TRAVIS_BUILD_ID
echo "token:" $TRAVIS_TOKEN
echo $( date )": Restarting ..."
echo
curl -H "Travis-API-Version: 3" \
  -H "User-Agent: API Explorer" \
  -H "Authorization: token ${TRAVIS_TOKEN}" \
https://api.travis-ci.org/build/${TRAVIS_BUILD_ID}/cancel
echo
curl -H "Travis-API-Version: 3" \
  -H "User-Agent: API Explorer" \
  -H "Authorization: token ${TRAVIS_TOKEN}" \
https://api.travis-ci.org/build/${TRAVIS_BUILD_ID}/restart

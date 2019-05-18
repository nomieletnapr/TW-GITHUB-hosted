#!bin/bash
curl \
  -H "Travis-API-Version: 3" \
  -H "User-Agent: API Explorer" \
  -H "Authorization: token dM0ac-HZighRJIQ5GrQdIQ" \
https://api.travis-ci.org/build/$TRAVIS_BUILD_ID/cancel

curl \
  -H "Travis-API-Version: 3" \
  -H "User-Agent: API Explorer" \
  -H "Authorization: token dM0ac-HZighRJIQ5GrQdIQ" \
https://api.travis-ci.org/build/$TRAVIS_BUILD_ID/restart

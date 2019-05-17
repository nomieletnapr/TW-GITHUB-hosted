#!/bin/bash

git add .
git commit -m "Deploy to GitHub Pages $(date)"
git push --quiet "https://${GH_TOKEN}@${GH_REF}" master:test

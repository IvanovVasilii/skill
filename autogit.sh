#!/bin/bash
#change to directory with repo
cd /home/k3s/skill/skill_mod2
#after pushing branch switch to track develop branch from origin. Switch it to "out" sourse
git branch -u out/main develop
#switch to proper branch
git checkout develop
git pull
git push -u origin -o merge_request.create
cd -

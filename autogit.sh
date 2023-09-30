#!/bin/bash
#Start ssh agent for crontab and add propper ssh key
eval "$(ssh-agent -s)"
ssh-add /home/k3s/.ssh/hub
#change to directory with repo
cd /home/k3s/skill/skill_mod2
#after pushing branch switch to track develop branch from origin. Switch it to "out" sourse
git branch -u out/main develop
#switch to proper branch
git checkout develop
git pull
git push -u origin -o merge_request.create
#kill ssh agent
ssh-agent -k
cd -

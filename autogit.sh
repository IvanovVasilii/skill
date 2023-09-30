#!/bin/bash
cd /home/k3s/skill/skill_mod2
git checkout develop
git pull
git push -u origin -o merge_request.create
cd -

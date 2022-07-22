#!/bin/bash
# create git version control in existing folder
# cd $working_dir
git init
git add .
git commit -m 'my first commit' -a
git remote add origin https://github.com/thehung92/misc-Rpackage.git
git branch -M  "main"
git push -u origin "main"
# check current remote
# remove remote to point to another git
# git remote rm origin
git remote -v

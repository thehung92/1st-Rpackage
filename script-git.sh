#!/bin/bash
# create git version control in existing folder
# cd $working_dir
git init
git add .
git commit -m 'v0.2.1 add dependencies' -a
git remote add origin https://github.com/thehung92/miscRpackage.git
git branch -M  "main"
git push -u origin "main"
# check current remote
# remove remote to point to another git
# git remote rm origin
git remote rm origin
git remote -v

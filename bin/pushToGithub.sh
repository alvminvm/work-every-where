#!/bin/sh

git remote -v | grep -q github

if [ $? ]; then
    msg=`date`
    git add --all .
    git commit -a -m "$msg"
    git push
else
    echo "warning: remote isn't github"
fi

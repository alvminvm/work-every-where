#!/bin/sh

if git remote -v | grep -q github; then
    msg=`date`
    git add --all .
    git commit -a -m "$msg"
    git push
else
    echo "warning: remote isn't github"
fi

#!/bin/bash

# gitsetup remoteUrl

    #
#set -e

git init
git add .
git branch -M main

if [ "$#" -ge 1 ]
then
    echo "err code $?"
    remoteUrl=$1
    git remote add origin main $remoteUrl
    echo "err code $?"
fi

dir=$(dirname $0)/gitignore.ios

cp $dir/.gitignore .gitignore

#git commit --allow-empty -m 'test'
#git push origin master

#!/bin/bash
currentbranchref="$(git symbolic-ref HEAD 2>&-)"
git branch -r | grep -v ' -> ' | while read remotebranch
do
    # Split <remote>/<branch> into remote and branchref parts
    remote="${remotebranch%%/*}"
    branchref="refs/heads/${remotebranch#*/}"

    if [ "$branchref" == "$currentbranchref" ]
    then
        echo "Updating current branch $branchref from $remote..."
        git pull --ff-only
    else
        echo "Updating non-current ref $branchref from $remote..."
        git fetch "$remote" "$branchref:$branchref"
    fi
done

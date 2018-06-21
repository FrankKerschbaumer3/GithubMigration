#!/bin/bash
echo "This will move GitHub Enterprise repos to GitHub.com. Creating a tmp directory to pull repos"
#Insert names of the repos that you will be moving, i.e names=(test test2 test3)
names=()

mkdir "./gitmigration" && cd "./gitmigration" || exit 1
#This step downloads repo and all branches and pushes it to new repo.
for name in ${names[@]}; do
    git clone https://github.com/user or organization here/"$name".git
    cd "./${name}" || exit 1
    git pull --all

    for remote in $(git branch -r); do
        echo "Tracking branch ${remote}"
        git branch --track "${remote#origin/}" "$remote"; 
    done

    echo "Adding new remote"
    git remote add new git@github.com:User or organization here/"$name".git

    echo "Mirroring to GitHub.com"
    git push new --mirror
    cd ".." || exit 1
done

echo "Sucessfully Completed migration. Deleting Temp directory"
rm -rf "~/gitmigration"
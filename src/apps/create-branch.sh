git checkout $1;
git pull --all

git checkout -b $2;
git push --set-upstream origin $2;

#!/bin/bash
docker compose up -d

current_branch=$(git rev-parse --abbrev-ref HEAD)

# Print the current branch name
echo "Current branch is: $current_branch"
if [[ $GIT_BRANCH == "origin/dev" ]]; then

docker tag  mynewreactapp sinolinaa/dev

docker push sinolinaa/dev

elif [[ $GIT_BRANCH == "origin/prod" ]]; then
docker tag  mynewreactapp sinolinaa/prod

docker push sinolinaa/prod
fi

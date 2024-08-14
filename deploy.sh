docker compose up -d

if [ "$BRANCH_NAME" == "dev" ]; then

docker tag  mynewreactapp sinolinaa/dev:v1.0

docker push sinolinaa/dev:v1.0

else
  echo "Branch is not dev. Skipping Docker tag and push."
fi



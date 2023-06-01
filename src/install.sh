# export PATH="./node_modules/.bin:$PATH"
echo "workspace= $GITHUB_WORKSPACE"
export PATH="$GITHUB_WORKSPACE/node_modules/.bin:$PATH"


echo 'testing1';

if [[ "$PACKAGE_MANAGER" == "yarn" ]]
then
  if [[ "$DEBUG_MODE" == "true" ]]; then echo "Installing via yarn"; fi;
  yarn install --immutable --immutable-cache --check-cache;
else
  if [[ "$DEBUG_MODE" == "true" ]]; then echo "Installing via npm"; fi;
  npm ci;
fi
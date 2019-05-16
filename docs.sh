function strip_namespace {
  local BSCONFIG=`node -e "const p = require('./bsconfig.json'); p.namespace = false; console.log(JSON.stringify(p, null, 2))"`
  [ $? -eq 0 ] || return $?
  echo -e "${BSCONFIG}" > ./bsconfig.json
}

function create_index_page {
  echo "<meta http-equiv=\"refresh\" content=\"0;URL='$1'\"/>" > $2
}

function create_index_pages {
  create_index_page "bs-declaredom/BsDeclaredom" "docs/index.html"
  [ $? -eq 0 ] || return $?
  create_index_page "BsDeclaredom" "docs/bs-declaredom/index.html"
}

function restore_config {
  if git diff --name-only --oneline | grep -q bsconfig.json
  then
    [ $? -eq 0 ] || return $?
    git checkout -- bsconfig.json
  fi
}


echo "Clean project..."
bsb -clean-world
echo "Done."

printf "Strip namespace from config... "
strip_namespace
[ $? -eq 0 ] || exit $?
printf "Done.\n"

echo "Build project..."
bsb -make-world
echo "Done."

echo "Running odoc..."
yarn run bs-odoc
[ $? -eq 0 ] || exit $?
echo "Done."

printf "Creating index pages... "
create_index_pages
[ $? -eq 0 ] || exit $?
printf "Done.\n"

printf "Restore config... "
restore_config
[ $? -eq 0 ] || exit $?
printf "Done\n"

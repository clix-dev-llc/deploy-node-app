#!/usr/bin/env bash

set -eE
function finish {
  set +x
  echo "Tests Failed!"
}
trap finish ERR

bash ./bin/clean.sh
SKAFFOLD_PATH=$(which skaffold) ./node_modules/.bin/mocha ./test/index.js --bail
bash ./bin/clean.sh

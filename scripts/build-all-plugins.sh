#!/bin/bash
# This script builds all Backstage plugins primarily to validate them.

set -e

for workspace in plugins/backstage-*; do
  if [ ! -d "$workspace" ]; then
    continue
  fi
  echo "Build $workspace"
  cd "$workspace"

  yarn tsc
  yarn build:all

  cd ../..
done

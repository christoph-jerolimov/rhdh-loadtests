#!/bin/bash

set -e

# This script builds different Backstage workspace with different rhdh-cli versions!

# 1.42
echo "Build Backstage 1.42 plugins with @janus-idp/cli"
cd plugins/backstage-1.42
if [ ! -d node_modules ]; then
  yarn install
fi
cd plugins/catalog-tab-n
npx --yes @janus-idp/cli@3.6.1 package package-dynamic-plugins --tag "rhdh-loadtest-plugins:bs_1.42_catalog-tab-n"
cd ../..
cd plugins/page-n
npx --yes @janus-idp/cli@3.6.1 package package-dynamic-plugins --tag "rhdh-loadtest-plugins:bs_1.42_page-n"
cd ../..
cd ../..

# 1.45
echo "Build Backstage 1.45 plugins with @red-hat-developer-hub/cli@1.8.0"
cd plugins/backstage-1.45
if [ ! -d node_modules ]; then
  yarn install
fi
cd plugins/catalog-tab-n
npx --yes @red-hat-developer-hub/cli@1.8.0 plugin package --tag "rhdh-loadtest-plugins:bs_1.45_catalog-tab-n"
cd ../..
cd plugins/page-n
npx --yes @red-hat-developer-hub/cli@1.8.0 plugin package --tag "rhdh-loadtest-plugins:bs_1.45_page-n"
cd ../..
cd ../..

# 1.48
echo "Build Backstage 1.48 plugins with @red-hat-developer-hub/cli@1.9.1"
cd plugins/backstage-1.48
if [ ! -d node_modules ]; then
  yarn install
fi
cd plugins/catalog-tab-n
npx --yes @red-hat-developer-hub/cli@1.9.1 plugin package --tag "rhdh-loadtest-plugins:bs_1.48_catalog-tab-n"
cd ../..
cd plugins/page-n
npx --yes @red-hat-developer-hub/cli@1.9.1 plugin package --tag "rhdh-loadtest-plugins:bs_1.48_page-n"
cd ../..
cd ../..

# prepare_source_code() {
#   echo "Prepare source code for $workspace"
# }

# build_container_image() {
#   local cli="$1"
#   local tag="$2"

#   echo "Building container image for $tag"
#   npx --yes $cli --tag "$tag"
# }

# # for 1 to 100
# for workspace in plugins/backstage-*; do
#   if [ ! -d "$workspace" ]; then
#     continue
#   fi

#   for i in {1..100}; do

#     echo "Processing $workspace"

#     cd "$workspace"

#     prepare_source_code "$workspace"

#     case "$workspace" in
#       *1.42*)
#         build_container_image "@janus-idp/cli@3.6.1" "rhdh-loadtest-plugins:bs_1.42_$i"
#         ;;
#       *1.45*)
#         build_container_image "@red-hat-developer-hub/cli@1.8.0" "rhdh-loadtest-plugins:bs_1.45_$i"
#         ;;
#       *1.48*)
#         build_container_image "@red-hat-developer-hub/cli@1.9.1" "rhdh-loadtest-plugins:bs_1.48_$i"
#         ;;
#       *)
#         echo "Unknown workspace version for $workspace"
#         ;;
#     esac

#     cd ../..
#   done
# done

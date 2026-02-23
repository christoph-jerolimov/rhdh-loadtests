#!/bin/bash

set -e

# This script builds different Backstage workspace with different rhdh-cli versions!

# 1.42
echo "Build Backstage 1.42 plugins with @janus-idp/cli"
cd plugins/backstage-1.42
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
cd plugins/catalog-tab-n
npx --yes @red-hat-developer-hub/cli@1.9.1 plugin package --tag "rhdh-loadtest-plugins:bs_1.48_catalog-tab-n"
cd ../..
cd plugins/page-n
npx --yes @red-hat-developer-hub/cli@1.9.1 plugin package --tag "rhdh-loadtest-plugins:bs_1.48_page-n"
cd ../..
cd ../..


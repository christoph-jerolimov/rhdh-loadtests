#!/bin/bash

set -e

localImage="localhost/rhhd-loadtest-plugins"
remoteRepo="quay.io/jerolimov/rhdh-loadtest-plugins"

# list local podman containers
for tag in $(podman images --filter=reference="$localImage:*" --format '{{.Tag}}'); do
    podman push "$localImage:$tag" "$remoteRepo:$tag"
done


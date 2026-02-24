#!/bin/bash

set -e

localImage="localhost/rhdh-loadtest-plugins"
remoteRepo="quay.io/jerolimov/rhdh-loadtest-plugins"

# list local podman containers
for tag in $(podman images --filter=reference="$localImage:*" --format '{{.Tag}}'); do
    echo "Pushing $localImage:$tag to $remoteRepo:$tag"
    podman push "$localImage:$tag" "$remoteRepo:$tag"
done


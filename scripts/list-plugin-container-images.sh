#!/bin/bash

set -e

# list local podman containers
podman images --filter=reference='localhost/rhdh-loadtest-plugins:*'


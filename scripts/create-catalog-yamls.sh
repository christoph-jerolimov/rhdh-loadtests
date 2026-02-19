#!/bin/bash

# Example from https://backstage.io/docs/features/software-catalog/descriptor-format/

function components() {
    local n=$1
    for i in $(seq 1 $n); do
    cat <<EOF
apiVersion: backstage.io/v1alpha1
kind: Component
metadata:
  name: component-$i
  description: The place to be, for great artists
  labels:
    example.com/custom: custom_label_value
  annotations:
    example.com/service-discovery: artistweb
  tags:
    - java
  links:
    - url: https://admin.example-org.com
      title: Admin Dashboard
      icon: dashboard
      type: admin-dashboard
spec:
  type: website
  lifecycle: production
  owner: group-$i
  system: system-$i
  subcomponentOf:
    - component-$((i - 1))
---
EOF
    done
}

# Create groups
function groups() {
    local n=$1
    for i in $(seq 1 $n); do
    cat <<EOF
apiVersion: backstage.io/v1alpha1
kind: Group
metadata:
  name: group-$i
  title: Group $i
  description: The place to be, for great artists
spec:
  type: team
  children: []
  parent: group-$((i - 1))
---
EOF
    done
}

# Create systems
function systems() {
    local n=$1
    for i in $(seq 1 $n); do
    cat <<EOF
apiVersion: backstage.io/v1alpha1
kind: System
metadata:
  name: system-$i
  title: System $i
  description: The place to be, for great artists
spec:
  owner: group-$i
---
EOF
    done
}

for n in 10 100 1000 10000; do
  echo -n "Creating catalog with $n components ..."
  components $n > "catalog/components-$n.yaml"
  # get only the file size only in human readable format
  echo -n " done."
  echo -n -e "\tFile size: $(ls -lh "catalog/components-$n.yaml" | awk '{print $5}')  "
  # print loc
  echo -n -e "\tLines of code: $(wc -l < "catalog/components-$n.yaml")"
  echo
done
echo

for n in 10 100 1000 10000; do
  echo -n "Creating catalog with $n groups ..."
  groups $n > "catalog/groups-$n.yaml"
  # get only the file size only in human readable format
  echo -n " done."
  echo -n -e "\tFile size: $(ls -lh "catalog/groups-$n.yaml" | awk '{print $5}')  "
  # print loc
  echo -n -e "\tLines of code: $(wc -l < "catalog/groups-$n.yaml")"
  echo
done
echo

for n in 10 100 1000 10000; do
  echo -n "Creating catalog with $n systems ..."
  systems $n > "catalog/systems-$n.yaml"
  # get only the file size only in human readable format
  echo -n " done."
  echo -n -e "\tFile size: $(ls -lh "catalog/systems-$n.yaml" | awk '{print $5}')  "
  # print loc
  echo -n -e "\tLines of code: $(wc -l < "catalog/systems-$n.yaml")"
  echo
done
echo

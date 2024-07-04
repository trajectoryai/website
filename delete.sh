#!/bin/bash

# List of files and directories to keep
keep=("deploy.sh" "_source" ".git" "delete.sh" "Makefile" "favicon.ico")

# Function to check if a value exists in an array
contains() {
  local e
  for e in "${keep[@]}"; do
    [[ "$e" == "$1" ]] && return 0
  done
  return 1
}

# Iterate through all files and directories in the current directory
for file in *; do
  # Check if the file/directory is in the keep list
  if ! contains "$file"; then
    echo "removing $file"
    rm -r "$file"
  fi
done

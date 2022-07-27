#!/usr/bin/env bash

if [ -n "$GITHUB_EVENT_PATH" ]; then
  echo "Dumping action event JSON file:"
  cat $GITHUB_EVENT_PATH;
else
  # not a critical failure, just a warning
  echo "Failed to dump action event JSON file, GITHUB_EVENT_PATH is not set!";
fi

echo "Dumping environment:"
printenv

echo "Configured APT sources:"
grep -r --include '*.list' '^deb ' /etc/apt/sources.list /etc/apt/sources.list.d/

echo "Updating apt sources:"
sudo apt update

echo "Installing packages:"
sudo apt install -y \
  tree \
  libtinfo5

echo "Dumping working tree structure:"
tree -Dphugf

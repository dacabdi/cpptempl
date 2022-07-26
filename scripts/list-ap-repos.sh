#!/usr/bin/env bash

grep -r --include '*.list' '^deb ' /etc/apt/sources.list /etc/apt/sources.list.d/

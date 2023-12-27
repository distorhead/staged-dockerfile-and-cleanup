#!/bin/bash

werf cleanup --repo ghcr.io/distorhead/staged-dockerfile-and-cleanup-1 --without-kube --repo-github-token $GITHUB_TOKEN &
werf build --repo ghcr.io/distorhead/staged-dockerfile-and-cleanup-1 &

#!/bin/bash

echo uuidgen > id
git add id
git commit -m "$(cat id)"

werf cleanup --repo ghcr.io/distorhead/staged-dockerfile-and-cleanup-1 --without-kube --repo-github-token $GITHUB_TOKEN | tee cleanup.log &
werf build --repo ghcr.io/distorhead/staged-dockerfile-and-cleanup-1 | tee build.log &

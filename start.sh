#!/bin/bash

werf cleanup --repo ghcr.io/distorhead/staged-dockerfile-and-cleanup-1 --without-kube &
werf build --repo ghcr.io/distorhead/staged-dockerfile-and-cleanup-1 &

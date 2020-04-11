#!/bin/bash

docker build -f Dockerfile.nanopc-t3-opencv -t cross-compler:nanopc-t3-opencv .
docker system prune -f
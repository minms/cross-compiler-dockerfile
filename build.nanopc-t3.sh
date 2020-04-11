#!/bin/bash

docker build -f Dockerfile.nanopc-t3 -t cross-compler:nanopc-t3 .
docker system prune -f
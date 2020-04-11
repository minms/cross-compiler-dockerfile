#!/bin/bash

docker build -t cross-compler:nanopc-t3 .
docker system prune -f
#!/bin/bash

docker build -t cross-compler:nanopc-t3-opencv .
docker system prune -f
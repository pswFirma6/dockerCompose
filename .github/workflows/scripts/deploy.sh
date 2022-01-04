#!/bin/sh

# branch - shoud be from develop
BRANCH="master"

GH_COMPOSE_REPO="https://github.com/pswFirma6/dockerCompose/archive/refs/heads/$%7BBRANCH%7D.tar.gz"

# If deployment directory exists remove it
[ -d deployment ] && rm -r deployment

# Create fresh deployment directory
mkdir deployment && cd deployment

# get latest docker-compose version
curl -L ${GH_COMPOSE_REPO} | tar -xz && \
mv "$(find . -maxdepth 1 -type d | tail -n 1)" start && \
cd start/Compose

# remove cache
docker builder prune -af

#ignore cached images and start the system in detatched mode
docker-compose build --no-cache && docker-compose up -d --force-recreate
#!/usr/bin/bash
git pull
/usr/bin/docker compose build
/usr/bin/docker compose up

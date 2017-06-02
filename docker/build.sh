#!/bin/bash
if [ -z "$1" ]; then
  docker build -t atmire/dspace-angular .
else
  docker build -t atmire/dspace-angular --build-arg $1 .
fi

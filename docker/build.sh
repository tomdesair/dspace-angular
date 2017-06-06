#!/bin/bash
if [ -z "$1" ]; then
  docker build -t dspace/dspace-angular .
else
  docker build -t dspace/dspace-angular --build-arg $1 .
fi

#!/bin/bash
docker run --rm -it -p 3000:3000 -v "$(dirname `pwd`)":/dspace/code --name dspace-angular atmire/dspace-angular

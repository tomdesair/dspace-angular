#!/bin/bash
CODE_DIR="`cd $(dirname $0) && cd .. && pwd`"

echo "Code directory is ${CODE_DIR}"
docker run --rm -it -v ${CODE_DIR}:/dspace/code --name dspace-angular dspace/dspace-angular /dspace/cleanup.sh

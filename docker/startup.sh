#!/bin/sh
if test -d /dspace/code/node_modules;
then
        echo "node_modules directory exists";
else
        echo "node_modules directory not found, creating one";
        cp -a /tmp/node_modules /dspace/code;
fi

echo "Running yarn..."
cd /dspace/code
yarn run watch:dev

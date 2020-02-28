#!/bin/sh
find . -name "package.json" | grep -v "node_modules" | while read line; do ncu -u --packageFile $line; npm --prefix `dirname $line` install; done;

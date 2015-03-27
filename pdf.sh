#!/bin/bash

prince --javascript --script=js/build.js index.html -o code-driven-infrastructure-and-deployment.pdf && open code-driven-infrastructure-and-deployment.pdf

if [ -f js/build.js ]; then
    build=$(awk -F'".?' '{print $1 "\042." $2+1 "\042;\n"}' js/build.js)
    echo $build > js/build.js
fi

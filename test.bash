#!/bin/bash
cp sensitive-script.bash ./sensitive-script-test.bash
./sensitive-script-test.bash
[ ! -f sensitive-script-test.bash ] && echo "Its gone!" && exit 1
echo "FAILED"
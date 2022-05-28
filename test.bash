#!/bin/bash
cp self-shred.bash ./self-shred-test.bash
./self-shred-test.bash
[ ! -f self-shred-test.bash ] && echo "Its gone!" && exit 1
echo "FAILED"
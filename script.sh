#!/bin/bash
set -e

.//llvm-project/build/bin/opt -O3 $1 -o 1
.//llvm-project/build/bin/llc -O3 --stats --info-output-file=1.stats 1

.//llvm-project/build/bin/opt --passes='default<O3>,reorder-code' $1 -o 2
.//llvm-project/build/bin/llc -O3 --stats --info-output-file=2.stats 2

cp 1.stats 1.st 
cp 2.stats 2.st 
rm 1.stats 
rm 2.stats

python3 diff_and_check.py && exit 1 

exit 0


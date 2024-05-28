#!/bin/bash
#not executed as  it deletes the files foe now
echo "Enter the number of files to retain"
read count
ls -lrt | awk -F " " 'NR>1 {print $NF}' > output
Total=`cat output | wc -l`
result=`expr $Total - $count`
head -$result output | xargs rm -rf

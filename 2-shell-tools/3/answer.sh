#!/usr/bin/env bash

echo "Starting program at $(date)"

echo "Running program $0 with $# arguments with pid $$"

count=1
stderr=""
stdout=""

sh ./random.sh

echo "Last error code - $?"

while [ $? -eq 0 ]
do

sh ./random.sh
count=$(( count + 1 ))

done

echo "It took $count times to random.sh to fail."
echo "STDERR: $stderr"
echo "STDOUT: $stdout"

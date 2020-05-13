#!/usr/bin/env bash

echo "Starting program at $(date)"

echo "Running program $0 with $# arguments with pid $$"

count=1

sh ./random.sh 2>err 1>out

echo "Last error code - $?"

while [ $? -eq 0 ]
do

count=$(( count + 1 ))
sh ./random.sh 2>err 1>out
done

stderr=$(cat err)
stdout=$(cat out)

rm err out

echo "It took $count times to random.sh to fail."
echo "STDERR: $stderr"
echo "STDOUT: $stdout"

#!/usr/bin/env bash

echo "Starting program at $(date)"

echo "Running program $0 with $# arguments with pid $$"

count=1
stdout='stdout prev val'
stderr='stderr prev val'

# why is this not working
stderr=$(stdout=$(sh ./random.sh 2>&9) 9>&1)


echo "STDERR: $stderr"
echo "STDOUT: $stdout"

echo "Last error code - $?"


#while [ $? -eq 1 ]
#do

#count=$(( count + 1 ))

# stderr=$(stdout=$(sh ./random.sh 2>&3) 3>&1)

done

echo "It took $count times to random.sh to fail."
echo "STDERR: $stderr"
echo "STDOUT: $stdout"

#!/usr/bin/env bash

lwd=$(cat lwd)

echo "cd-ing to ${lwd}"

# why is this cd not working
cd ${lwd}
pwd

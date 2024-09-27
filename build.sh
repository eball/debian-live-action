#!/bin/bash
mkdir -p output
image=$1
image_name=$(echo "$image"|awk -F'/' '{print $NF}')
docker run --privileged --rm -v $image:/$image_name -v $(pwd)/output:/output -v $(pwd)/supportFiles:/supportFiles:ro debian:bookworm /supportFiles/build.sh 

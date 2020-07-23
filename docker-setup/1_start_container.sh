#!/bin/bash

name=${1-deepspeed}

image=deepspeed/deepspeed
docker pull $image

local_data_path=$HOME/ds
local_ssh_path=/home/core/.ssh

echo "Starting docker container: $name with image: $image"
docker run -d -t --name $name \
    --net=host \
    --mount type=bind,source=$local_data_path,target=/data \
    --mount type=bind,source=$local_ssh_path,target=/home/deepspeed/.ssh \
    --gpus all $image bash

name=${1-deepspeed}
image=deepspeed/deepspeed

local_data_path=$HOME/ds
local_ssh_path=/home/core/.ssh

echo "starting docker image named $name"
docker run -d -t --name $name \
    --net=host \
    --mount type=bind,source=$local_data_path,target=/data \
    --mount type=bind,source=$local_ssh_path,target=/home/deepspeed/.ssh \
    --gpus all $image bash


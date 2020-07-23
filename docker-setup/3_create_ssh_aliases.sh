#!/bin/bash

# List of worker node IP addresses
# Note: if worker nodes are started with Azure you can use the 
# Azure CLI (http://aka.ms/azure-cli) to get a list of IP addresses,
# e.g., 'az vm list-ip-addresses'. Here is an example usage: 
# https://github.com/microsoft/DeepSpeed/blob/master/azure/setup_vms.sh#L27-L36
ips=$@

# SSH server port
port=2222

# Create ssh config for each worker node
output_config=config
idx=0
for ip in $ips; do
    echo "ip=$ip"
    echo "Host worker-$idx
    HostName $ip
    StrictHostKeyChecking no
    Port $port
    " >> $output_config
    idx=$(( $idx + 1 ))
done

#!/bin/bash

echo "worker-0 slots=8
worker-1 slots=8" > hostfile

sudo mkdir /job
sudo mv hostfile /job/


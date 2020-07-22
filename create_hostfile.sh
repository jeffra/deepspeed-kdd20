sudo mkdir /job

echo "worker-0 slots=8
worker-1 slots=8" > hostfile

sudo mv hostfile /job/


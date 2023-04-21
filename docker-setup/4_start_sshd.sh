#!/bin/bash

SSH_PORT=2222

cat /etc/ssh/sshd_config > sshd_config
sed -i "0,/^Port [0-9]\+/s//Port ${SSH_PORT}/" sshd_config
sed -i "0,/^#Port [0-9]\+/s//Port ${SSH_PORT}/" sshd_config
sudo mv sshd_config /etc/ssh/sshd_config

sudo service ssh start
sleep 1
sudo service ssh status

SSH_PORT=2222

cat /etc/ssh/sshd_config > sshd_config 
sed -i "0,/^#Port 22/s//Port ${SSH_PORT}/" sshd_config 
sudo cp sshd_config /etc/ssh/sshd_config

sudo service ssh start


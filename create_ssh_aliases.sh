ips=$@
port=2222
idx=0
for ip in $ips; do
    echo "ip=$ip"
    echo "Host worker-$idx
    HostName $ip
    Port $port
    " >> config
    idx=$(( $idx + 1 ))
done

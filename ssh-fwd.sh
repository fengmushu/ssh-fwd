

ssh -o CheckHostIP=yes \
	-o IdentityFile=/home/orangepi/.ssh/xh_id_rsa \
	-o LogLevel=DEBUG \
	-o ServerAliveCountMax=3 \
	-o ServerAliveInterval=5 \
	-o StrictHostKeyChecking=accept-new \
	-o TCPKeepAlive=yes \
	-o VerifyHostKeyDNS=yes \
	-o ExitOnForwardFailure=yes \
	-o BatchMode=yes \
	-g -nN -R *:12522:localhost:22 -p 12580 ken@xumiao.cc



all:=ssh-fwd.service ssh-fwd.sh

install: $(all)
	sudo cp ssh-fwd.service /etc/systemd/system/
	sudo systemctl daemon-reload
	sudo cp ssh-fwd.sh /usr/sbin/




PORT=12522
[ -z "$PORT" ] || {
	PORT=$1
}
echo -n "use port $PORT, "

PID=`sudo netstat -nap | grep  0.0.0.0:$PORT | awk '{print $7}' | awk -F/ '{print $1}'`

[ -z "$PID" ] || {
	echo "found $PID killed"
	kill -9 $PID
}

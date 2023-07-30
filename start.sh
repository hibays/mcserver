CURDIR=$(cd $(dirname $0); pwd )
cd $CURDIR

java \
	-jar ./paper-1.20.1-100.jar \
	--host 2409:8a55:ed71:9390:4836:9641:e6f9:b31b \
	--port 3456 \
	--nogui \
	--serverId loveumua \
	
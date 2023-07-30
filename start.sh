CURDIR=$(cd $(dirname $0); pwd )
cd $CURDIR

java \
	-jar ./paper-1.20.1-100.jar \
	--host 0.0.0.0 \
	--port 25565 \
	--nogui \
	--serverId loveumua \
	
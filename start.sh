CURDIR=$(cd $(dirname $0); pwd )
cd $CURDIR

PaperJAR=$(echo ./paper-1.20.*-*.jar)

java \
	-XX:+UseZGC \
	-jar  "$PaperJAR"\
	--host 0.0.0.0 \
	--port 25565 \
	--nogui \
	--serverId loveumua \
pause
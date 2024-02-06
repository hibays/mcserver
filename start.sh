CURDIR=$(cd $(dirname $0); pwd )
cd $CURDIR

JExec=java
PaperJAR=$(echo ./paper-1.20.*-*.jar)

LPaper() {

$JExec \
	-XX:+UseZGC \
	-DPaper.IgnoreJavaVersion=true \
	-jar  "$PaperJAR"\
	--host 0.0.0.0 \
	--port 25565 \
	--nogui \
	--serverId loveumua

}

LPaper

pause
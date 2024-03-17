CURDIR=$(cd $(dirname $0); pwd )
cd $CURDIR

JExec="$JAVA_HOME/bin/java"

PaperJAR=$(echo ./paper-1.20.*-*.jar)

ExtJAVAargs='-XX:+UseShenandoahGC'

LPaper() {

"$JExec" \
	$ExtJAVAargs \
	-DPaper.IgnoreJavaVersion=true \
	-jar  "$PaperJAR"\
	--host 0.0.0.0 \
	--port 25565 \
	--nogui \
	--serverId loveumua

}

LPaper

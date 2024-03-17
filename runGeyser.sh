CURDIR=$(cd $(dirname $0); pwd )
cd $CURDIR/GeyserS

JExec="$JAVA_HOME/bin/java"

GeyserJAR=$(echo Geyser-*.jar)

ExtJAVAargs='-XX:+UseShenandoahGC'

LGeyser() {

"$JExec" \
	$ExtJAVAargs \
	-DPaper.IgnoreJavaVersion=true \
	-jar  "$GeyserJAR"\
	--nogui

}

LGeyser

CURDIR=$(cd $(dirname $0); pwd )
cd $CURDIR/GeyserS

JExec=java

GeyserJAR=$(echo Geyser-*.jar)

ExtJAVAargs='-XX:+UseZGC -XX:+ZGenerational'

LGeyser() {

$JExec \
	$ExtJAVAargs \
	-DPaper.IgnoreJavaVersion=true \
	-jar  "$GeyserJAR"\
	--nogui

}

LGeyser &

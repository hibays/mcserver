CURDIR=$(cd $(dirname $0); pwd )
cd $CURDIR

JExec=java

GeyserJAR=$(echo $CURDIR/Geyser-*.jar)

ExtJAVAargs='-XX:+UseZGC -XX:+ZGenerational'

LGeyser() {

cd $CURDIR/GeyserS

$JExec \
	$ExtJAVAargs \
	-DPaper.IgnoreJavaVersion=true \
	-jar  "$GeyserJAR"\
	--nogui

cd $CURDIR

}

LGeyser &

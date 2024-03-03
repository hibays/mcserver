CURDIR=$(cd $(dirname $0); pwd )
cd $CURDIR

JExec=java

IsLPaper=true
PaperJAR=$(echo ./paper-1.20.*-*.jar)

IsLGeyser=true

ExtJAVAargs='-XX:+UseZGC -XX:+ZGenerational'

LPaper() {

$JExec \
	$ExtJAVAargs \
	-DPaper.IgnoreJavaVersion=true \
	-jar  "$PaperJAR"\
	--host 0.0.0.0 \
	--port 25565 \
	--nogui \
	--serverId loveumua

}

LGeyser() {

cd ./GeyserS

$JExec \
	$ExtJAVAargs \
	-DPaper.IgnoreJavaVersion=true \
	-jar  "$(echo ./Geyser-*.jar)"\
	--nogui

cd ..

}

if $IsLPaper;then
	LPaper &
fi

if $IsLGeyser;then
	LGeyser &
fi

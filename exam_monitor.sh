#!/bin/sh
mkdir -p ~/Applications && \
cd ~/Applications && \
if [ ! -d "javaws" ]; then # if directory does not exist
	mkdir javaws && \
	cd javaws && \
	wget https://javadl.oracle.com/webapps/download/AutoDL?BundleId=249192_b291ca3e0c8548b5a51d5a5f50063037 --output-document=jre-8u391-linux-x64.tar.gz -q --show-progress && \
	tar -xvzf jre-8u391-linux-x64.tar.gz --strip-components=1 && \
	rm jre-8u391-linux-x64.tar.gz
fi
if [ "$XDG_SESSION_TYPE" = "x11" ]; then # if using x11
	cd ~/Applications && \
	./javaws/bin/javaws https://login.exammonitor.dk/exam.jnlp
else
	echo "[ERROR] You're running wayland, which exam monitor does not like. It can't take screenshots on wayland. Look up how you can switch to x11 on your distro. [ERROR]"
fi

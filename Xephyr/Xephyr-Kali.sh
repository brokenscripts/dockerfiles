#!/bin/bash
# Make Xephyr spin us up a window
Xephyr -ac :667 -resizeable -br -reset 2>/dev/null &
# 
# Create a container, that is removed when finished
docker run --rm -it \
-e DISPLAY=:667 \
--cap-add=NET_ADMIN \
--device=/dev/net/tun \
-v /tmp/.X11-unix/X667:/tmp/.X11-unix/X667 \
-v ${PWD}/lxterminal.desktop:/root/Desktop/lxterminal.desktop \
-v ${PWD}/vpnscript.sh:/vpnscript.sh \
-v ${PWD}/CascadiaCodePL.ttf:/usr/share/fonts/ubuntu/CascadiaCodePL.ttf \
--name kali-full \
kali:full
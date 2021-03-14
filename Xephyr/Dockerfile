FROM kalilinux/kali-linux-docker

RUN apt update \
	&& apt install -y xterm \
	synapse \
	openvpn \
	kali-linux-full \
	kali-desktop-lxde

ENTRYPOINT [ "startlxde" ]

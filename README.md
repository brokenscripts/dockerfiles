# Notes
The following command allows Docker to Spawn GUI apps on a local X Server:  
_This is **EXTREMELY** unsafe_
```
xhost + local:
```
  
## Group Issues
Runtime variables to declare  
```  
--group-add $(getent group audio | cut -d: -f3)  
```
* Fix sound issues when GID mappings do not line up with host (`1000 [Ubuntu]` compared to `985 [arch]` for USER GID)*  
* Video/Audio groups might need to be added to fix this when specified in run/dockerfile (Audio is 995 [arch], Video is 986 [arch])*  

## Audio Issues
If host is using **ALSA**, then containers can use containerized pulseaudio (Jess's Files)

If host is using PulseAudio (Ubuntu) then add these lines to `docker run` to make containers **share HOST** pulseaudio:
```
-v ${XDG_RUNTIME_DIR}/pulse/native:${XDG_RUNTIME_DIR}/pulse/native:Z
-e PULSE_SERVER=unix:${XDG_RUNTIME_DIR}/pulse/native
--group-add $(getent group audio | cut -d: -f3)
```

# Xephyr  
> Xephyr is a nested X server that runs as an X application  
> https://wiki.archlinux.org/index.php/Xephyr  

This is my favorite way of using a container like a full blown virtual machine.  Refer to the README, using Kali as an example.  


# Dockerfile builds
## dDebug
Container full of Debug tools  

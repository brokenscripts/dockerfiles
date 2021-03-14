# Xephyr  
> Xephyr is a nested X server that runs as an X application  
> https://wiki.archlinux.org/index.php/Xephyr  

This is my favorite way of using a container like a full blown virtual machine.  

## Requirements  
`xhost +local:`  
Root level privileges.  This thing can get messy.  No support for Reverse TCP/Tunneling, gotta figure it out.  

## Files  
`CascadiaCodePL` - I enjoy this font.  Save it to the fonts folder for use.  
`Dockerfile` - Dockerfile to build that adds the lxde desktop to the container.  
`lxterminal.desktop` - Create a shortcut on the desktop to the terminal.  I get lazy and want a shortcut instead of hotkeys sometimes.  
`vpnscript.sh` - Hiccups with OpenVPN configs happen.  Modify this as needed and bind mount `-v` in the OpenVPN config along side this.  

`Xephyr-Kali.sh` - The script responsible for spinning up a new Xephyr window and then running the Kali container with all files mounted in.  

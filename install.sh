#!/bin/bash

apt update && sudo apt upgrade -y
apt install dbus-x11 tigervnc-standalone-server xfce4 xfce4-goodies -y
mkdir -p ~/.vnc
cat <<EOL > ~/.vnc/xstartup
#!/bin/sh

unset SESSION_MANAGER
unset DBUS_SESSION_BUS_ADDRESS

dbus-launch --exit-with-session startxfce4
EOL
chmod +x ~/.vnc/xstartup
clear
echo "### Ketik Perintah ###"
echo " vncserver"

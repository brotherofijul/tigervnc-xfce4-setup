#!/bin/bash

if [ "$UID" -eq 0 ]; then
    echo "LOG: UID terdeteksi sebagai 0 (root). Melanjutkan dengan apt install sudo..."
    apt install sudo
    echo "LOG: Perintah apt install sudo telah selesai."
else
    echo "LOG: UID bukan 0. Melewatkan instalasi sudo."
fi
  
sudo apt update && sudo apt upgrade -y

sudo apt install dbus-x11 tigervnc-standalone-server xfce4 xfce4-goodies -y

mkdir -p ~/.vnc

cat <<EOL > ~/.vnc/xstartup
#!/bin/sh

unset SESSION_MANAGER
unset DBUS_SESSION_BUS_ADDRESS

dbus-launch --exit-with-session startxfce4
EOL

sudo chmod +x ~/.vnc/xstartup

vncserver

vncserver -list

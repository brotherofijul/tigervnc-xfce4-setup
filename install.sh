#!/bin/bash

if [ "$UID" -eq 0 ]; then
    apt update && sudo apt upgrade -y
    apt install sudo -y
else
    sudo apt update && sudo apt upgrade -y
fi

sudo apt install dbus-x11 tigervnc-standalone-server xfce4 xfce4-goodies -y

mkdir -p ~/.vnc

cat <<EOL > ~/.vnc/xstartup
#!/bin/sh

unset SESSION_MANAGER
unset DBUS_SESSION_BUS_ADDRESS

dbus-launch --exit-with-session startxfce4
EOL

chmod +x ~/.vnc/xstartup

echo "Ketik perintah:"
echo ""
echo " vncserver"
echo "Memulai sesi"
echo " vncserver :1"
echo "Memulai sesi ke-1"
echo " vncserver -list"
echo "Mengecek sesi"
echo " vncserver -kill :1"
echo "menonaktifkan sesi ke-1"

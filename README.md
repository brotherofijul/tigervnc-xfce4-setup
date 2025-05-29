# Tigervnc XFCE4 Setup - Ubuntu v24.04

cara menginstal dan menggunakan tigervnc di Ubuntu Server atau Proot-distro Ubuntu


## Instalasi Manual
1. Update
   ```
   sudo apt update && apt upgrade -y
   ```
   Jika anda pengguna Proot-distro
   ```
   apt install sudo && sudo apt update && apt upgrade -y
   ```

3. Instalasi
   ```
   sudo apt install dbus-x11 tigervnc-standalone-server xfce4 xfce4-goodies
   ```

5. Pengaturan VNC
   ```
   mkdir -p ~/.vnc
   cat <<EOL > ~/.vnc/xstartup
   #!/bin/sh
   unset SESSION_MANAGER
   unset DBUS_SESSION_BUS_ADDRESS

   dbus-launch --exit-with-session startxfce4
   EOL
   sudo chmod +x ~/.vnc/xstartup
   ```

6. Jalankan VNC
   ```
   vncserver
   vncserver -list
   ```



## Instalasi dengan Bash
1. Klon repositori dan eksekusi
   ```
   curl -o- <url>| bash
   ```

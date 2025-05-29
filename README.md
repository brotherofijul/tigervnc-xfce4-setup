# Install GUI Proot-distro Ubuntu v24.04

cara menginstal GUI dengan XFCE4 dan Tigervnc di Proot-distro Ubuntu


## Instalasi Manual
1. Update
   ```
   apt install sudo && sudo apt update && apt upgrade -y
   ```

3. Instalasi
   ```
   apt install dbus-x11 tigervnc-standalone-server xfce4 xfce4-goodies
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
   chmod +x ~/.vnc/xstartup
   ```

6. Jalankan VNC
   ```
   vncserver
   vncserver -list
   ```
   
## Instalasi Otomatis
1. Klon repositori dan eksekusi
   ```
   curl -o- https://raw.githubusercontent.com/brotherofijul/tigervnc-xfce4-setup/main/install.sh | bash
   ```

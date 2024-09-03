#!/bin/bash
echo "Starting VNC Server setup"

echo "Installing Server with GUI. This may take several minutes... feel free to go grab a coffee."
sudo dnf groupinstall "Server with GUI" -y

echo "Installing TigerVNC..."
sudo dnf install -y tigervnc-server tigervnc-server-module

echo "Setting VNC password. Note: this is for the currently logged in user."
password="oracle"
printf "$password\n$password\n\n" | vncpasswd
echo "password set: $password"

# start vncserver on startup
sudo systemctl enable --now vncserver@:1.service

vncserver

echo "Setup complete! Now you can try to connect. You may need to setup port-forwarding on your local machine. If so, see the readme."

#!/bin/bash
echo "Starting VNC Server setup"

echo "Installing Server with GUI. This may take several minutes... feel free to go grab a coffee."
sudo dnf groupinstall "Server with GUI" -y

echo "Installing TigerVNC..."
sudo dnf install -y tigervnc-server tigervnc-server-module

echo "Setting VNC password. Note: this is for the currently logged in user."
vncpasswd

# start vncserver on startup
sudo systemctl enable --now vncserver@:1.service

vncserver

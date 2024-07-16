#!/bin/bash
echo "Setting up VCN server..."

yum groupinstall "Server with GUI" -y
yum install tigervnc-server -y

cp /usr/lib/systemd/system/vncserver@.service /etc/systemd/system/vncserver@.service

# set up oracle user
bash setup_user.sh

# vncserver service file
cp vncserver@.service /etc/systemd/system/vncserver@.service
systemctl daemon-reload


#!/bin/bash
echo "Setting up VCN server..."

sudo yum update -y
yum groupinstall "Server with GUI" -y
yum install tigervnc-server -y

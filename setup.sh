#!/bin/bash
echo "Setting up VCN server..."

yum groupinstall "Server with GUI" -y
yum install tigervnc-server -y

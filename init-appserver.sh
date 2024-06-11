#!/bin/sh
useradd devops
echo 'devops:appserver123' | chpasswd devops
systemctl stop NetworkManager
systemctl disable NetworkManager            
ip addr add 10.0.0.2 dev enp0s3
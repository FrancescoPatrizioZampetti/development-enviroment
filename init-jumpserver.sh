#!/bin/sh
sudo dnf update -y
sudo dnf install net-tools -y
# creo utente
useradd jump-host
echo 'jump-host:jumpserver123' | chpasswd jump-host
# assegno ip statico
ip addr add 192.167.1.18 dev enp0s3

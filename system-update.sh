#!/bin/bash
echo "update packages"
sudo apt update -y
echo "upgrade packages"
sudo apt upgrade -y
echo "remove obsolete packages"
sudo apt autoremove -y

echo "Your System is Up to Date!"

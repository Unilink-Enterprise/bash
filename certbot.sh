#!/bin/bash
echo "------------Installing snapd"
sudo apt install snapd -y

echo "------------Installing snap core and refreshing it"
sudo snap install core; sudo snap refresh core


echo "------------ Removing certbot if installed"
sudo apt-get remove certbot



echo "------------Installing Certbot Classic"
sudo snap install --classic certbot
sudo ln -s /snap/bin/certbot /usr/bin/certbot


echo -e "\n\n\n\nCertbot has been installed\nPlease use 'sudo certbot --nginx' to install ssl"

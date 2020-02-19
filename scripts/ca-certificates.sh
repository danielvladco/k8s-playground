source ../.env
cd /usr/local/share/ca-certificates/
echo "Installing: $CA_CERTIFICATES"
wget $CA_CERTIFICATES
sudo update-ca-certificates

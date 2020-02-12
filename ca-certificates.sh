cd /usr/local/share/ca-certificates/ || exit
wget "$CA_CERTIFICATES"
sudo update-ca-certificates

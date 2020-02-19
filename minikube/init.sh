apt-get update
apt-get install -qq -y curl make dos2unix

curl -Lo minikube https://storage.googleapis.com/minikube/releases/latest/minikube-linux-amd64 && chmod +x minikube
sudo install minikube /usr/local/bin/
minikube start --vm-driver=none

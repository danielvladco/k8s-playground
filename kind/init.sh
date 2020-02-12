# add golang repository
add-apt-repository -y ppa:longsleep/golang-backports

# requred for kubectl
curl -s https://packages.cloud.google.com/apt/doc/apt-key.gpg | sudo apt-key add -
echo "deb https://apt.kubernetes.io/ kubernetes-xenial main" | sudo tee -a /etc/apt/sources.list.d/kubernetes.list

apt-get update
apt-get install -y curl make golang-1.13-go apt-transport-https kubectl

export GO111MODULE="on"
export GOPATH="/home/vagrant/go"
export GOROOT="/usr/lib/go-1.13"
export PATH="$PATH:$GOPATH/bin"
export PATH="$PATH:$GOROOT/bin"
{
  echo export GO111MODULE="on"
  echo export GOPATH="/home/vagrant/go"
  echo export GOROOT="/usr/lib/go-1.13"
  echo export PATH="\$PATH:/home/vagrant/go/bin"
  echo export PATH="\$PATH:/usr/lib/go-1.13/bin"
} >>/etc/bash.bashrc

go get sigs.k8s.io/kind@v0.7.0
kind create cluster
kubectl cluster-info --context kind-kind

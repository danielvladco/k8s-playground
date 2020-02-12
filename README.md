# K8s playground
This repository is a set of helpers to get up and running quickly with k8s

## If you want to use a VM
 - [ ] Install a virtualization machine ([VMWare](https://www.vmware.com/products/workstation-player/workstation-player-evaluation.html), [VirtualBox](https://www.virtualbox.org/wiki/Downloads)) or on Windows Enable [Hyper-V](https://docs.microsoft.com/en-us/virtualization/hyper-v-on-windows/quick-start/enable-hyper-v)
 - [ ] Download and install [vagrant](https://www.vagrantup.com/downloads.html)
 - [ ] install env plugin `vagrant plugin install vagrant-env`

### Minikube
 - [ ] on ubuntu `cp .env.example .env && source .env && make kind-all`
 - [ ] on vagrant `cp .env.example ./minikube/.env && vagrant up`

### Kubeadm Multinode cluster (only on linux)
 - [ ] [Python](https://www.python.org/downloads) and pip. On ubuntu `apt-get install python python3-pip`
 - [ ] Install ansible `pip install ansible`
 - [ ] `cp .env.example ./minikube/.env && vagrant up`

### Kind
 - [ ] on ubuntu `cp .env.example .env && source .env && make kind-all`
 - [ ] on vagrant `cp .env.example ./kind/.env && vagrant up`

### Other Helpers
 - Proxy to forwarded port: `kubectl proxy --address=0.0.0.0 --port 80`
 - Checkpoint login `curl -LO https://github.com/felixb/cpfw-login/releases/download/v0.3/cpfw-login_amd64 && ./cpfw-login_amd64 --user dvladco`
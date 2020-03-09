SHELL:=/bin/bash

kind-all: ca-certs docker kind-init kind-start helm
minikube-all: ca-certs docker minikube-init minikube-start helm

get-remote-scripts:
	@pushd scripts && ./get-remote-scripts.sh && popd

kind-init:
	@./kind/init.sh

kind-start:
	@pushd kind && ./start.sh && popd

minikube-init:
	@./minikube/init.sh

minikube-start:
	@pushd minikube && ./start.sh && popd

docker: docker-install docker-addgroup

docker-install:
	 @./scripts/install-docker.sh

docker-addgroup:
	@./docker-addgroup.sh

helm: helm-install helm-init

helm-install:
	@./scripts/install-helm.sh

helm-init:
	@./scripts/helm-init.sh

# utilities
nsm:
	@./scripts/nsm.sh

dashboard:
	@./scripts/dashboard.sh

ca-certs:
	@./scripts/ca-certificates.sh

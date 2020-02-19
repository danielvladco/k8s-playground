kind-all: ca-certs docker kind helm
minikube-all: ca-certs docker minikube helm

get-remote-scripts:
	cd ./scripts && ./get-remote-scripts.sh || true && cd ..

kind:
	./kind/init.sh

minikube:
	./minikube/init.sh

docker: docker-install docker-addgroup

docker-install:
	 ./scripts/docker-install.sh

docker-addgroup:
	./docker-addgroup.sh

helm: helm-install helm-init

helm-install:
	./scripts/helm-install.sh

helm-init:
	./helm-init.sh

nsm:
	./nsm.sh

dashboard:
	./dashboard.sh

ca-certs:
	./ca-certificates.sh
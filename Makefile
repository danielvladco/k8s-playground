kind-all: ca-certs docker kind helm-all
minikube-all: ca-certs docker minikube helm-all

kind:
	./kind/init.sh

minikube:
	./minikube/init.sh

docker:
	 curl https://get.docker.com | sh

helm-all: helm-install helm-init nsm dashboard

helm-install:
	curl -LO https://git.io/get_helm.sh && chmod +x get_helm.sh && sh get_helm.sh && rm -f get_helm.sh

helm-init:
	./helm-init.sh

nsm:
	./nsm.sh

dashboard:
	./dashboard.sh

ca-certs:
	./ca-certificates.sh
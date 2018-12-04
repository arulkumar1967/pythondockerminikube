REGISTRY=arulkumar1967
REPO=pythondockerminikube
TIMESTAMP=tmp-$(shell date +%s )

create:
	@eval $$(minikube docker-env) ;\
	docker build -t $(REGISTRY)/$(REPO):$(TIMESTAMP) .
	kubectl create -f kubernetes/

delete:
	kubectl delete -f kubernetes/

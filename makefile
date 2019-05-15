REGISTRY=arulkumar1967
REPO=pythondockerminikube
TIMESTAMP=tmp-$(shell date +%s )

create:
	@eval $$(minikube docker-env) ;\
	docker build -t $(REGISTRY)/$(REPO):latest .
	sudo docker push $(REGISTRY)/$(REPO):latest
	kubectl create -f kubernetes/

delete:
	kubectl delete -f kubernetes/

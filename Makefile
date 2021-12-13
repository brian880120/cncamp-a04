dep:
	go mod vendor

run: dep
	go run main.go

deploy:
	kubectl create -f httpserver.namespace.yaml
	kubectl create -f httpserver.configmap.yaml
	kubectl create -f httpserver.deployment.yaml
	kubectl create -f httpserver.service.yaml
	kubectl create -f secret.yaml
	kubectl create -f httpserver.ingress.yaml

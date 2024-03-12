.PHONY: build tag push clean all

build:
	docker build -f Dockerfile -t lucasrgoes/adonis:current .
	docker build -f Dockerfile-alpine -t lucasrgoes/adonis:current-alpine .

tag:
	docker tag lucasrgoes/adonis:current lucasrgoes/adonis:4.1-node.21.7.1
	docker tag lucasrgoes/adonis:current lucasrgoes/adonis:4.1-node.21.7
	docker tag lucasrgoes/adonis:current lucasrgoes/adonis:4.1-node.21
	docker tag lucasrgoes/adonis:current lucasrgoes/adonis:4.1-node.lts
	docker tag lucasrgoes/adonis:current lucasrgoes/adonis:4.1
	docker tag lucasrgoes/adonis:current lucasrgoes/adonis:4
	docker tag lucasrgoes/adonis:current lucasrgoes/adonis:latest
	docker tag lucasrgoes/adonis:current-alpine lucasrgoes/adonis:4.1-node.21.7.1-alpine
	docker tag lucasrgoes/adonis:current-alpine lucasrgoes/adonis:4.1-node.21.7-alpine
	docker tag lucasrgoes/adonis:current-alpine lucasrgoes/adonis:4.1-node.21-alpine
	docker tag lucasrgoes/adonis:current-alpine lucasrgoes/adonis:4.1-node.lts-alpine
	docker tag lucasrgoes/adonis:current-alpine lucasrgoes/adonis:4.1-alpine
	docker tag lucasrgoes/adonis:current-alpine lucasrgoes/adonis:4-alpine

push:
	@docker login
	docker push lucasrgoes/adonis:current
	docker push lucasrgoes/adonis:4.1-node.21.7.1
	docker push lucasrgoes/adonis:4.1-node.21.7
	docker push lucasrgoes/adonis:4.1-node.21
	docker push lucasrgoes/adonis:4.1-node.lts
	docker push lucasrgoes/adonis:4.1
	docker push lucasrgoes/adonis:4
	docker push lucasrgoes/adonis:latest
	docker push lucasrgoes/adonis:current-alpine
	docker push lucasrgoes/adonis:4.1-node.21.7.1-alpine
	docker push lucasrgoes/adonis:4.1-node.21.7-alpine
	docker push lucasrgoes/adonis:4.1-node.21-alpine
	docker push lucasrgoes/adonis:4.1-node.lts-alpine
	docker push lucasrgoes/adonis:4.1-alpine
	docker push lucasrgoes/adonis:4-alpine

clean:
	@docker images | grep lucasrgoes/adonis | tr -s ' ' | cut -d ' ' -f 2 | xargs -I {} docker rmi lucasrgoes/adonis:{}

all: build tag push clean

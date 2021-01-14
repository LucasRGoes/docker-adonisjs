.PHONY: pull tag push clean all

pull:
	docker pull lucasrgoes/adonis:current
	docker pull lucasrgoes/adonis:current-alpine

tag:
	docker tag lucasrgoes/adonis:current lucasrgoes/adonis:4.1-node.14.15.4
	docker tag lucasrgoes/adonis:current lucasrgoes/adonis:4.1-node.14.15
	docker tag lucasrgoes/adonis:current lucasrgoes/adonis:4.1-node.14
	docker tag lucasrgoes/adonis:current lucasrgoes/adonis:4.1-node.lts
	docker tag lucasrgoes/adonis:current lucasrgoes/adonis:4.1
	docker tag lucasrgoes/adonis:current lucasrgoes/adonis:4
	docker tag lucasrgoes/adonis:current lucasrgoes/adonis:latest
	docker tag lucasrgoes/adonis:current-alpine lucasrgoes/adonis:4.1-node.14.15.4-alpine
	docker tag lucasrgoes/adonis:current-alpine lucasrgoes/adonis:4.1-node.14.15-alpine
	docker tag lucasrgoes/adonis:current-alpine lucasrgoes/adonis:4.1-node.14-alpine
	docker tag lucasrgoes/adonis:current-alpine lucasrgoes/adonis:4.1-node.lts-alpine
	docker tag lucasrgoes/adonis:current-alpine lucasrgoes/adonis:4.1-alpine
	docker tag lucasrgoes/adonis:current-alpine lucasrgoes/adonis:4-alpine

push:
	@docker login
	docker push lucasrgoes/adonis:4.1-node.14.15.4
	docker push lucasrgoes/adonis:4.1-node.14.15
	docker push lucasrgoes/adonis:4.1-node.14
	docker push lucasrgoes/adonis:4.1-node.lts
	docker push lucasrgoes/adonis:4.1
	docker push lucasrgoes/adonis:4
	docker push lucasrgoes/adonis:latest
	docker push lucasrgoes/adonis:4.1-node.14.15.4-alpine
	docker push lucasrgoes/adonis:4.1-node.14.15-alpine
	docker push lucasrgoes/adonis:4.1-node.14-alpine
	docker push lucasrgoes/adonis:4.1-node.lts-alpine
	docker push lucasrgoes/adonis:4.1-alpine
	docker push lucasrgoes/adonis:4-alpine

clean:
	@docker images | grep lucasrgoes/adonis | tr -s ' ' | cut -d ' ' -f 2 | xargs -I {} docker rmi lucasrgoes/adonis:{}

all: pull tag push clean

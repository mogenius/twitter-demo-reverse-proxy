network := my-mogenius-net
service := mogenius-reverse-proxy
name := nginx-proxy-service

all: build run

network:
	docker network create $(network);

build: docker-rm-images
	docker build --no-cache  --build-arg env=local -t  ${service}:latest .;

run: docker-rm-container docker-rm-images
	docker run \
		-p 80:80 \
		-p 443:443 \
		--network my-mogenius-net \
		--name ${name} \
		${service};

docker-rm-images:
		-docker image prune -f;

docker-rm-container:
		-docker rm $$(docker stop $$(docker ps -a -q --filter="name=${name}" --format="{{.ID}}"));
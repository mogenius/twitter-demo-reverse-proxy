expose := 8080
network := my-mogenius-net

all: build run

network:
	docker network create $(network)

build:
	docker build --no-cache -t mogenius-reverse-proxy:latest .

run:
	docker run \
		-p ${expose}:80 \
		-p 443:443 \
		--network my-mogenius-net \
		--name nginx-proxy-service \
		mogenius-reverse-proxy
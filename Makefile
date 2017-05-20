all: build

build:
	@docker build --tag=jouz/docker-ubuntu:latest .

release: build
@docker build --tag=jouz/ubuntu:$(shell cat VERSION) 
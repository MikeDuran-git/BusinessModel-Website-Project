IMAGE_NAME = web-image
CONTAINER_NAME = web-container

build:
	docker build -t $(IMAGE_NAME) .

run:
	docker run -p 8080:80 --name $(CONTAINER_NAME) -d $(IMAGE_NAME)

stop:
	docker stop $(CONTAINER_NAME)

rm:
	docker rm $(CONTAINER_NAME)

update:
	make build
	make stop
	make rm
	make run

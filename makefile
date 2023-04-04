IMAGE_NAME = web-image
CONTAINER_NAME = web-container

build: #build the docker image.
	docker build -t $(IMAGE_NAME) .

run: # run the container based on the build docker image.
	docker run -p 8080:80 --name $(CONTAINER_NAME) -d $(IMAGE_NAME)

stop: #stop a container from execution, the webpage cannot be accessed anymore.
	docker stop $(CONTAINER_NAME)

rm: # destroys the container, need to stop it first.
	docker rm $(CONTAINER_NAME)

update: #if you make changes to the container, just run "make update" it will automatically apply your changes on the container and run it again.
	make build
	make stop
	make rm
	make run

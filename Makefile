build:
	sudo docker build -t denisbakhtin/docker_test .

run: 
	sudo docker run -it --rm -p 8888:8888 denisbakhtin/docker_test

hub_push:
	sudo docker login & sudo docker push denisbakhtin/docker_test
build:
	sudo docker build -t denisbakhtin/docker_test .

run: 
	sudo docker run -it --rm -p 8888:8888 denisbakhtin/docker_test

hub_push:
	sudo docker login & sudo docker push denisbakhtin/docker_test

git_push:
	@echo -n "What's commit name? "
	read commit
	git add -u & git add . & git commit -m "$commit"; git push origin master
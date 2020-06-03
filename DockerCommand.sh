# run multiple commands in a container
docker run -it <imagesName> sh
docker run -it --rm <imagesName> sh # automatically delete the container once it's existed

# List all running containers
docker ps -a

# delete a container
docker rm <container ID>
docker rm $(docker  ps -s -q -f status=exited) #deletes all containers that have a status of Exited.
docker container prune


docker run -d -p 8888:80 prakhar1989/static-site #specify a custom port to whih the client will forward connections to the container
docker stop static-site # stop a detached container

docker exec -it quizzical_heyrovsky bash #go into the container

#show all images
docker images

#run dockerfile
docker build -t yuwinnie/catnip .

#login ducker Hub
docker login
	- user name 
	- password

#PUSH your image to Docker Hub
docker push yuwinnie/catnip

#show image's history
docker history --human 659f826fabf4


#delete all images
docker rmi $(docker images -q) -f

#delete child images
	#step1: find the image id and parent id for all image created after the image in question with the following:
docker inspect --format='{{.Id}} {{.Parent}}' $(docker images --filter since=659f826fabf4 -q)

	#step2: then you call command:
docker rmi d76ba5f1de8e4cda19ca5da2dd73760f60c0d735db674f8862236cee70b5b5bc
	#"sub_image_id" is ID of dependent image
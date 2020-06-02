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
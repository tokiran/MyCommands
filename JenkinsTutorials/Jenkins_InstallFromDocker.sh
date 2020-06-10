#https://www.jenkins.io/doc/book/installing/

#Create a bridge network in Docker using the following docker network create command:
docker network create jenkins

#Create the following volumes to share the Docker client TLS certificates needed to connect to the Docker daemon and persist the Jenkins data using the following docker volume create commands:
docker volume create jenkins-docker-certs
docker volume create jenkins-data

#In order to execute Docker commands inside Jenkins nodes, download and run the docker:dind Docker image using the following docker container run command:
docker container run \
  --name jenkins-docker \
  --rm \
  --detach \
  --privileged \
  --network jenkins \
  --network-alias docker \
  --env DOCKER_TLS_CERTDIR=/certs \
  --volume jenkins-docker-certs:/certs/client \
  --volume jenkins-data:/var/jenkins_home \
  --publish 2376:2376 \
  docker:dind

#Download the jenkinsci/blueocean image and run it as a container in Docker using the following docker container run command:
docker container run \
  --name jenkins-blueocean \
  --rm \
  --detach \
  --network jenkins \
  --env DOCKER_HOST=tcp://docker:2376 \
  --env DOCKER_CERT_PATH=/certs/client \
  --env DOCKER_TLS_VERIFY=1 \
  --publish 8080:8080 \
  --publish 50000:50000 \
  --volume jenkins-data:/var/jenkins_home \
  --volume jenkins-docker-certs:/certs/client:ro \
  jenkinsci/blueocean

    #Type "http://localhost:8080/" to get access to Jenkins


#Run below command to get initial administrator's password.
docker logs <container ID> 

  #For example: 
    docker container ls

    #CONTAINER ID        IMAGE                 COMMAND                  CREATED             STATUS              PORTS                                              NAMES
    #3349aab7209c        jenkinsci/blueocean   "/sbin/tini -- /usr/…"   12 minutes ago      Up 12 minutes       0.0.0.0:8080->8080/tcp, 0.0.0.0:50000->50000/tcp   jenkins-blueocean
    #d21fe0e76a45        docker:dind           "dockerd-entrypoint.…"   16 minutes ago      Up 16 minutes       2375/tcp, 0.0.0.0:2376->2376/tcp                   jenkins-docker

    docker logs 3349aab7209c

#Install jenkins from .war
  #set JAVA_HOME on Mac OS X
    #step1: Open Terminal.
    #Confirm you have JDK
    which java
    #Check version of Java
    java -version
    #Set JAVA_HOME using this command in Terminal: 
    export JAVA_HOME=/Library/Java/Home

    #goto the location where Jenkins.war is
    java -jar jenkins.war

    Admin pwd: 1225a53682fb4000ad55e3d1edf4a20f


    
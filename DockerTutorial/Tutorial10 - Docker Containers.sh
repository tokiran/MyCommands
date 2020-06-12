#Tutorial10 - Docker Containers
	1. What are Containers
	2. How to create Containers
	3. How to start / stop Containers
	4. Basic Commands

	#TIPS & TRICKS
	- What are Containers: Containers are running instances of Docker Images

	#COMMANDS
	: docker ps
	: docker run ImageName
	: docker start ContainerName/ID
	: docker stop ContainerName/ID

	: docker pause ContainerName/ID
	: docker unpause  ContainerName/ID

	: docker top ContainerName/ID
	: docker stats ContainerName/ID

	: docker attach ContainerName/ID #Attach local standard input, output, and error streams to a running container

	: docker kill ContainerName/ID #Kill one or more running containers
	: docker rm ContainerName/ID #Remove one or more containers
	 	docker rm --force ContainerName/ID #Force-removes one or more containers

	: docker history ImageName/ID

	#Interview questions:
		#What's containers
	 	- Containers are running instances of Docker Images

		#What's Container images
	 	- A container image is a lightweight, stand-alone, executable package of a piece of software that includes everything needed to run it: code, runtime, system tools, system libraries, settings.

		#Features of Containers:
		- Are lightweight
		- Fewer resources are used
		- Booting of containers is very fast
		- Can start, stop, kill, remove containers easily and quickly
		- Operating System resources can be shared within Docker
		- Containers run on the same machine sharing the same Operating system Kernel, this makes it faster
		- You can use the command to create a container in stopped state
			docker container create
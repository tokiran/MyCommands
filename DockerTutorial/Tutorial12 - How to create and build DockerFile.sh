#Tutorial12 - How to create and build DockerFile
	1. What is Dockerfile
	2. How to create Dockerfile
	3. How to build image from Dockerfile
	4. Basic Commands

	#Dockerfile : 
	- A text file with instructions to build image
	- Automation of Docker Image Creation

	FROM
	RUN
	CMD

	Step1: Create a file named Dockerfile
	Step2: Add instructions in DockerFile
	Step3: Build dockerfile to create image
	Step4: Run image to create container

	#Commands:
	: docker build
	: docker build -t imagename:Tag directoryOfDockerfile
	: docker run image

	#Reference for Dockerfile:
	: https://github.com/wsargent/docker-cheat-sheet#dockerfile
	: https://docs.docker.com/engine/reference/builder/
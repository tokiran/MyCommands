#Tutorial5 - How to install docker on LINUX
	#AWS Free Tier: 
		- https://aws.amazon.com/free/

	#Step1: Connect to linux System:
		ssh -i "aws_linux.pem" ec2-user@ec2-35-183-31-215.ca-central-1.compute.amazonaws.
		uname -r

	#Step2: Install Docker
		sudo yum -y update
		sudo yum install -y docker
		docker #get all commands
		docker --version
		docker info

	#Step3: Start Docker
		sudo service docker Start #docker service is started
		docker info

		sudo usermod -a -G docker ec2-user #add your user to the docker group. So you don't have to use "sodu" in front of every docker command

	#Step4: Stop Docker
		sudo service docker stop

	#Step5: Uninstall Docker
		sudo yum remove docker

	#TIPS: 
		- https://get.docker.com/ #for more installation related help
		- https://docs.docker.com/engine/installation/binaries/ #to install docker from binaries
		- https://docs.aws.amazon.com/AmazonECS/latest/developerguide/docker-basics.html #install steps from amazon ec2
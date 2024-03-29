#Tutorial14 - What is Docker Compose
	1. What | Why - Docker Compose
	2. How to install
	3. How to create docker compose file
	4. How to use docker compose file to create services
	5. Basic Commands

	#TIPS
	#Docker compose
		: tool for defining & running multi-container docker applications
		: use yaml files to configure application services (docker-compose.yml)
		: can start all services with a single command : docker compose up
		: can stop all services with a single command : docker compose down
		: can scale up selected services when required

	#Step 1 : install docker compose (already installed on windows and mac with docker)
   		: docker-compose -v
   
   		- 2 Ways to install
   			: https://github.com/docker/compose/rel...
			: Using PIP
    			pip install -U docker-compose

	#Step 2 : Create docker compose file at any location on your system
   		docker-compose.yml

	#Step 3 : Check the validity of file by command
    	docker-compose config

	#Step 4 : Run docker-compose.yml file by command
   		docker-compose up -d

	#Steps 5 : Bring down application by command
   		docker-compose down

	#TIPS
		- How to scale services
		docker-compose up -d --scale database=4
 
	#References:
		- https://hub.docker.com
		- https://github.com/docker/compose/releases
		- https://www.google.co.in/search?q=microservices+example&rlz=1C5CHFA_enIN734IN734&source=lnms&tbm=isch&sa=X&ved=0ahUKEwjE3LPQqYfcAhXGpY8KHQHmB4gQ_AUICigB#imgrc=4466IjbSng_wcM:
BASE_COMMAND=docker-compose

up:
	${BASE_COMMAND} up -d

down:
	${BASE_COMMAND} down -v

# Be careful using this command, as it will remove all containers and volumes of your docker-machine
clean:
	docker stop $(shell docker ps -a -q)
	docker rm -v $(shell docker ps -a -q)

# Tails the environment log files
logs:
	${BASE_COMMAND} logs -f

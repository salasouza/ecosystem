help:
	#----------------------------------------------------------------------------#
	# Codes for docker:                                                          #
	#----------------------------------------------------------------------------#
		# + Run make buildDocker
		# + Run make createContainer
		# + Run make createAndBuild --> shortcut for build Docker and Container
		# + Run make logs --> open jupyter notebook
		# + Run make killDocker
	#----------------------------------------------------------------------------#
	#----------------------------------------------------------------------------#
	# Codes for docker-compose:                                                  #
	#----------------------------------------------------------------------------#
		# + Run make compose-job
	  # + Run make compose-ps
	  # + Run make compose-logs
		# + Run make compose-stop --> stops the containers
	#----------------------------------------------------------------------------#
	# Done!!!                                                                    #
	#----------------------------------------------------------------------------#

createAndBuild: buildDocker createContainer # CI - pipeline local
	# Run logs
	docker logs job

buildDocker:
	# Run build Docker
	./scripts/buildDocker.sh

createContainer:
	# Run Create container
	./scripts/createContainer.sh

killDocker:
	# Run kill docker
	./scripts/killDocker.sh

compose-job:
	# Run build
	docker-compose up -d

compose-ps:
	# Run ps
	docker-compose ps

compose-logs:
	# Run logs
	docker-compose logs job

compose-stop:
	# stops the containers
	docker-compose stop

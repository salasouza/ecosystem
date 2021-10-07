buildDocker:
	# Run build Docker
	bash buildDocker.sh

createContainer:
	# Run Create container
	bash createContainer.sh

killDocker:
	# Run kill docler
	bash killDocker.sh

compose-job:
	# Run build
	docker-compose up -d

compose-ps:
	# Run ps
	docker-compose ps

compose-logs:
	# Run logs
	docker-compose logs job

compose-kill:
	# kill process
	docker-compose rm -f job

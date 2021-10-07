buildDocker:
	# Run build Docker
	bash /scripts/buildDocker.sh

createContainer:
	# Run Create container
	bash /scripts/createContainer.sh

killDocker:
	# Run kill docler
	bash /scripts/killDocker.sh

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

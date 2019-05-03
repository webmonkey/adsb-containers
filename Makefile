start: pull ## Run all of the containers daemonised with docker-compose
	docker-compose up --detach


stop: ## Run all of the docker-compose containers
	docker-compose down

pull: ## pull in fresh images
	docker-compose pull --ignore-pull-failures

help:
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | sort | awk 'BEGIN {FS = ":.*?## "}; {printf "\032[36m%-30s\033[0m %s\n", $$1, $$2}'

.PHONY: deploy start help

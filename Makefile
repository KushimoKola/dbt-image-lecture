.PHONY: build

DIRECTORY = $$(pwd)
PARSED_DIRECTORY := $$(echo $(DIRECTORY) | sed "s/\/c\//C:\//")


.DEFAULT: help
help:
	@echo "\n \
	------------------------------ \n \
	build-dbt: This build the image to be used for dbt. \n \
	start-dbt: executes into the dbt container in order to run dbt commands. \n \
	------------------------------ \n"
# Always change image name -- "dbt_poc" 
build-dbt:
	@docker build . -t dbt_poc

start-dbt:
	@if [ "$$(docker images -q dbt_poc)" == "" ]; then echo "dbt image doesn't exist, run the build-dbt command to build the image" && exit 1; fi
	@docker run -e DB_PORT=5432 -e DB_HOST=host.docker.internal --rm -it -v "$(PARSED_DIRECTORY)":/usr/dbt_app dbt_poc zsh
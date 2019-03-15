DOCKER=docker
MAIN_YAML=index.yaml

run:
	 $(DOCKER) run -p 8080:8080  -e API_URL=docs/$(MAIN_YAML) -v $$PWD:/usr/share/nginx/html/docs swaggerapi/swagger-ui

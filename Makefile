DOCKER=docker
YARN=yarn
NODE=node
MAIN_YAML=index.yaml

install:
	$(YARN) install

run/swagger:
	$(DOCKER) run -p 8080:8080  -e API_URL=docs/$(MAIN_YAML) -v $$PWD:/usr/share/nginx/html/docs swaggerapi/swagger-ui

run/app:
	$(NODE) ./app.js

run/dredd:
	$(YARN) run ver2
	$(YARN) run ver3

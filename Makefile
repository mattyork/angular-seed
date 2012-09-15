all: lint test

lint:
	@./node_modules/.bin/jshint \
		app/js test/e2e test/unit \
	&& echo "  ✔\033[32m passed jshint, yo! \033[0m"

test: test-unit test-e2e

test-unit: 
	@./node_modules/.bin/testacular start config/testacular.conf.js --single-run

test-e2e:
	@echo "\033[32mYou must have a web server running for this to work\033[0m"
	@./node_modules/.bin/testacular start config/testacular-e2e.conf.js

.PHONY: all lint test

all: lint test

lint:
	@./node_modules/.bin/jshint \
		app/js test/e2e test/unit \
	&& echo "  ✔\033[32m passed jshint, yo! \033[0m"

test: test-unit test-e2e

test-unit: 
	@./node_modules/.bin/testacular start test/unit/testacular.conf \
		--single-run

test-e2e:
	@./node_modules/.bin/testacular start test/e2e/testacular.conf \
		--single-run

.PHONY: all lint test

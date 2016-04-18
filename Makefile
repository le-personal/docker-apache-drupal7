CURRENT_DIRECTORY := $(shell pwd)

build:
	@docker build --tag=iiiepe/apache-drupal7 $(CURRENT_DIRECTORY)

.PHONY: build

PMPCLI := $(shell pmpc --version)

help:
	@echo 'make [install | test | all]'

all: test install

test:
	@echo 'write some tests!'

install: install-fixtures

install-fixtures:
ifdef PMPCLI

# example: pmpc put --file fixtures/schema.property.json

else
	@echo 'install Net::PMP and verify pmpc command is in your PATH'
endif

.PHONY: help all test install

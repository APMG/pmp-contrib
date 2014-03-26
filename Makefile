help:
	@echo 'make [install | test | all]'

all: test install

test:
	@echo 'write some tests!'

install:
	pmpc put --path fixtures/profile.property.json
	pmpc put --path fixtures/schema.property.json

.PHONY: help all test install

PMPCLI := $(shell pmpc --version)

help:
	@echo 'make [install | test | all]'

all: test install

test:
	@echo 'write some tests!'

install: install-fixtures

install-fixtures:
ifdef PMPCLI
	pmpc put --file fixtures/schema.property.json
	pmpc put --file fixtures/profile.property.json
	pmpc put --file fixtures/schema.series.json
	pmpc put --file fixtures/profile.series.json
	pmpc put --file fixtures/schema.episode.json
	pmpc put --file fixtures/profile.episode.json
	pmpc put --file fixtures/schema.topic.json
	pmpc put --file fixtures/profile.topic.json
	pmpc put --file fixtures/topic.Arts.json
	pmpc put --file fixtures/topic.Culture.json
	pmpc put --file fixtures/topic.Education.json
	pmpc put --file fixtures/topic.Food.json
	pmpc put --file fixtures/topic.Health.json
	pmpc put --file fixtures/topic.Money.json
	pmpc put --file fixtures/topic.Music.json
	pmpc put --file fixtures/topic.News.json
	pmpc put --file fixtures/topic.Politics.json
	pmpc put --file fixtures/topic.Science.json
	pmpc put --file fixtures/topic.Sports.json
	pmpc put --file fixtures/topic.Technology.json
else
	@echo 'install Net::PMP and verify pmpc command is in your PATH'
endif

.PHONY: help all test install

IMAGE_NAME ?= dnxsolutions/musketeers:latest

build:
	docker build -t $(IMAGE_NAME) .

shell:
	docker run --rm -it --entrypoint=/bin/bash $(IMAGE_NAME)

test:
	docker run --rm -it -v $(PWD)/:/opt/app -w /opt/app --entrypoint=./scripts/test.sh $(IMAGE_NAME)

lint:
	docker run --rm -i -v $(PWD)/hadolint.yaml:/.config/hadolint.yaml hadolint/hadolint < Dockerfile
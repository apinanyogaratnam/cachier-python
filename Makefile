IMAGE := cachier-python
VERSION := 0.1.1
REGISTRY_URL := ghcr.io/apinanyogaratnam/${IMAGE}
IMAGE_VERSION_NAME := ${REGISTRY_URL}:${VERSION}
IMAGE_LATEST_VERSION_NAME := ${REGISTRY_URL}:latest

.PHONY: venv, build

build:
	python3 setup.py bdist_wheel

freeze:
	pip freeze > requirements.txt

venv:
	python3 -m venv venv

workflow:
	git tag -m "v${VERSION}" v${VERSION}
	git push --tags
	make build
	make upload

upload:
	twine upload dist/*

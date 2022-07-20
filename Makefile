IMAGE := cachier-python
VERSION := 0.2.0
REGISTRY_URL := ghcr.io/apinanyogaratnam/${IMAGE}
IMAGE_VERSION_NAME := ${REGISTRY_URL}:${VERSION}
IMAGE_LATEST_VERSION_NAME := ${REGISTRY_URL}:latest

.PHONY: venv, build

build:
	python3 setup.py sdist bdist_wheel

freeze:
	pip freeze > requirements.txt

freeze-dev:
	pip freeze > requirements_dev.txt

venv:
	python3 -m venv venv

workflow:
	git tag -m "v${VERSION}" v${VERSION}
	git push --tags

upload:
	twine upload dist/cachier_python-${VERSION}-py3-none-any.whl

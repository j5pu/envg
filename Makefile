.PHONY: docs tests venv
#
#msg := fix: $(shell git status --porcelain | grep -v "^??" | cut -c4- | tr '\n' ' ')
#SHELL := $(shell bash -c 'command -v bash')
#ROOT_DIR:=$(shell dirname $(realpath $(firstword $(MAKEFILE_LIST))))
#PYTHONPATH := $(ROOT_DIR)/src
#export msg
#export PYTHONPATH

brew:
	@python3 -m pproj $@ --command gh

browser:
	@python3 -m pproj $@

build:  # run: clean and venv (requirements)
	@python3 -m pproj $@

clean:
	@python3 -m pproj $@

commit: tests
	@python3 -m pproj $@

coverage:
	@python3 -m pproj $@

docs:
	@python3 -m pproj $@

latest:
	@python3 -m pproj $@

next:
	@python3 -m pproj $@

publish:  # runs: tests (build (clean, venv (requirements)), pytest, ruff and tox), commit, tag, push, twine and clean
	@python3 -m pproj $@

pproj:
	@pip3 install -q pproj

pyenv:
	@pyenv install 3.11
	@pyenv install 3.12-dev

pytest:
	@python3 -m pproj $@

requirements:
	@python3 -m pproj $@ --install

ruff:
	@python3 -m pproj $@

secrets:
	@python3 -m pproj $@

tests:  # runs: build (clean, venv (requirements)), pytest, ruff and tox
	@python3 -m pproj $@

tox:
	@python3 -m pproj $@

twine:
	@python3 -m pproj $@

venv:  # runs: requirements
	@python3 -m pproj $@

.DEFAULT_GOAL := publish

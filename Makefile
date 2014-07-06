export SHELL := /bin/bash
export PATH := $(shell npm bin):$(PATH)

all: index.js

%.js: %.ls
	lsc -c $<

test: index.js test.ls
	mocha -r LiveScript -u exports test.ls

.PHONY: test

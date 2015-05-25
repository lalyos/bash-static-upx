REPO=$(shell git remote -v|sed -n "/origin/  {s/.*:\([^\.]*\).git.*/\1/p;q;}")
VERSION=4.3.30

deps:
	go get github.com/progrium/gh-release
	
build:
	rm -rf releases
	docker build -t bash-static .
	docker run -v $(shell pwd)/releases:/releases bash-static

test: build
	./releases/bash-osx --version|grep -q 4.3.30
	docker run -t -v $(shell pwd)/releases/bash-linux:/bash alpine /bash --version |  grep -q 4.3.30

release: build
	gh-release create $(REPO) $(VERSION)

.PHONY: release build

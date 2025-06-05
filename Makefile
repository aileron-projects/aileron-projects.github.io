.DEFAULT_GOAL:=build
.PHONY: build
build:
	chmod +x ./content/go/build.sh && bash -c ./content/go/build.sh

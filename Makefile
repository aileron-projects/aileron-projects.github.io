TARGETS += content/go/build.sh

.DEFAULT_GOAL:=build
.PHONY: build
build: $(TARGETS)

.PHONY: %.sh
%.sh:
	chmod +x $@ && bash -c $@

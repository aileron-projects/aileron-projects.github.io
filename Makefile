TARGETS += content/go/build.sh

.DEFAULT_GOAL:=build
.PHONY: build
build: $(TARGETS)

.PHONY: $(TARGETS)
$(TARGETS):
	chmod +x $@ && bash -c $@

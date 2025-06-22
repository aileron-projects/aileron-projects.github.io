TARGETS += content/go/build.sh
TARGETS += content/aileron-observability/build.sh

.DEFAULT_GOAL:=build
.PHONY: build
build: $(TARGETS)

.PHONY: $(TARGETS)
$(TARGETS):
	chmod +x $@ && bash -c $@

ifndef ligo_compiler
ligo_compiler=docker run --rm -v "$(PWD)":"$(PWD)" -w "$(PWD)" ligolang/ligo:stable
endif

.PHONY: test
test:
	@$(ligo_compiler) run test ./test/bigarray.test.jsligo

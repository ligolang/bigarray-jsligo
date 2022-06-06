ligo_compiler=docker run --rm -v "$$PWD":"$$PWD" -w "$$PWD" ligolang/ligo:next
# ligo_compiler=../../../ligo
PROTOCOL_OPT=--protocol ithaca
JSON_OPT=--michelson-format json

help:
	@echo  'Usage:'
	@echo  '  all             - Remove generated Michelson files, recompile smart contracts and lauch all tests'
	@echo  '  test            - Run integration tests (written in Ligo)'
	@echo  ''

all: test

test: test_ml_ligo_js test_js_ligo_js

test_ml_ligo_js: test/bigarray.test.forjs.mligo 
	@echo "Running integration tests"
	@$(ligo_compiler) run test $^ $(PROTOCOL_OPT)

test_js_ligo_js: test/bigarray.test.forjs.jsligo 
	@echo "Running integration tests"
	@$(ligo_compiler) run test $^ $(PROTOCOL_OPT)

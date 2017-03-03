BIN := ./node_modules/.bin

VANIPACK := $(BIN)/vanipack
ESLINT := $(BIN)/eslint
STYLELINT := $(BIN)/stylelint

default: start

start:
	NODE_ENV=production $(VANIPACK) start

build:
	NODE_ENV=production $(VANIPACK) build

serve:
	$(VANIPACK) serve

lint:
	$(ESLINT) .
	$(STYLELINT) ./**/*.css

clean:
	rm -rf ./.vanipack

.PHONY: default start build serve lint clean

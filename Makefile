BIN := ./node_modules/.bin

VANILLA := $(BIN)/vanilla
ESLINT := $(BIN)/eslint

default: start

start:
	NODE_ENV=production $(VANILLA) start

build:
	NODE_ENV=production $(VANILLA) build

serve:
	$(VANILLA) serve

lint:
	$(ESLINT) .

clean:
	rm -rf ./.vanilla

.PHONY: default start build serve lint clean

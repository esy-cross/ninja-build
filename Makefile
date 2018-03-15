.PHONY: install

PLATFORM := unknown

UNAME := $(shell uname -s)
ifeq ($(UNAME),Linux)
	PLATFORM := linux
endif
ifeq ($(UNAME),Darwin)
	PLATFORM := darwin
endif
ifeq ($(UNAME),CYGWIN_NT-10.0)
	PLATFORM := win
endif

install:
	cp -r vendor/ninja.$(PLATFORM) $(cur__bin)/ninja

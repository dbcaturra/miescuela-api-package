CFLAGS += -std=c11 -Wall -Wextra -pedantic -Werror
PREFIX ?= /data/data/co.miescuela/files/usr

termux-api: termux-api.c

install: termux-api
	mkdir -p $(PREFIX)/bin/ $(PREFIX)/libexec/
	install termux-api $(PREFIX)/libexec/
	install termux-callback $(PREFIX)/libexec/
	install scripts/* $(PREFIX)/bin/

.PHONY: install

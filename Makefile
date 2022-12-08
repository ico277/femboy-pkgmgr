PREFIX = /usr/local
CC = cc
CFILES = $(wildcard src/*.c)
EXECUTABLE = femboy
CFLAGS = -O2
LDFLAGS = ""

.PHONY: install

femboy:
    $(CC) $(CFILES) -o $(EXECUTABLE) $(LDFLAGS) $(CFLAGS)

install: $(EXECUTABLE)
    cp $(EXECUTABLE) $(PREFIX)/bin/

PREFIX = /usr/local
CC = cc --std=c99
CFILES = $(wildcard src/*.c)
EXECUTABLE = femboy
CFLAGS = -O2
#LDFLAGS = 

.PHONY: install run clean

femboy:
	$(CC) $(CFILES) -o $(EXECUTABLE) $(LDFLAGS) $(CFLAGS)

femboy_debug:
	$(CC) $(CFILES) -o $(EXECUTABLE)_debug $(LDFLAGS) $(CFLAGS) -g

valgrind: $(EXECUTABLE)_debug
	valgrind --leak-check=yes ./$(EXECUTABLE)_debug

install: $(EXECUTABLE)
	cp $(EXECUTABLE) $(PREFIX)/bin/

clean:
	rm $(EXECUTABLE) *.out *.a *.o || true

run: clean $(EXECUTABLE)
	./$(EXECUTABLE)

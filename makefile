CC=gcc
CFLAGS=-c -Wall
LDFLAGS=
SOURCES=hello-world.c
OBJECTS=$(SOURCES:.c=.o)
EXECUTABLE=hello-world

all: $(SOURCES) $(EXECUTABLE)

$(EXECUTABLE): $(OBJECTS)
	$(CC) $(LDFLAGS) $(OBJECTS) -o $@

.c.o:
	$(CC) $(CFLAGS) $< -o $@

clean:
	rm -rf *o $(EXECUTABLE)


CC=gcc
DEBUG=-g
LIBS=-lm -lz
OPT=-O3
CFLAGS=-Wall -m64 -std=gnu99 -pedantic

INSTALL_DIR=/usr/local/bin
OBJ=obj/bionitio.o obj/fasta.o obj/log.o
TARGET=bionitio-c

default: obj $(TARGET)

clean:
	-rm obj/*.o ./bionitio* 

install: $(TARGET)
	install -m 0755 $(TARGET) $(INSTALL_DIR)
.PHONY: install

$(TARGET): obj 
	$(CC) $(CFLAGS) $(OPT) $(LDFLAGS) -o $(TARGET) $(OBJ) $(LIBS)

objdir:
	mkdir -p obj

obj: objdir $(OBJ)

obj/%.o: src/%.c
	$(CC) $(CFLAGS) $(OPT) -c $? -o $@ 

### tests

# compile and link
test-build: $(TARGET) src/test.c
	$(CC) $(CFLAGS) $(OPT) -c src/test.c -o obj/test.o
	$(CC) $(CFLAGS) $(OPT) $(LDFLAGS) -o bionitio-test obj/fasta.o obj/test.o $(LIBS)

# run
test: test-build
	./bionitio-test

SRC := src/mon.c src/commander.c src/ms.c
OBJ := $(SRC:.c=.o)
CFLAGS := -D_GNU_SOURCE -std=c99

.SUFFIXES: .c .o
.c.o:
	$(CC) $< $(CFLAGS) -c -o $@

mon: $(OBJ)
	$(CC) $(OBJ) -o $@

.PHONY: clean
clean:
	rm mon
	rm $(OBJ)

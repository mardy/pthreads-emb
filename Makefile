SRC=$(wildcard *.c)
OBJ=$(patsubst %.c,%.o,$(SRC))

all: libpthread.a

libpthread.a: $(OBJ)
	$(AR) -rcs $@ $(OBJ)

%.o: %.c
	$(CC) $(CFLAGS) -I . -c $< -o $@

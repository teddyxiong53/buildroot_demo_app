.PHONY: all clean

OBJS = demo_app.o
CC = $(CROSS_COMPILE)gcc
OUT_BIN = demo_app
dep_file = .$@.d

all: $(OBJS)
	$(CC) $(LDFLAGS) -g -o $(OUT_BIN) $^
	
%.o: %.c:
	$(CC) $(CFLAGS) -c -o $@ $^
	
clean:
	rm -rf *.o $(OUT_BIN) *.d
	
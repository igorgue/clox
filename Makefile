### If you wish to use extra libraries (math.h for instance),
### add their flags here (-lm in our case) in the "LIBS" variable.

LIBS = -lm

###
CFLAGS  = -std=c99
CFLAGS += -g
# CFLAGS += -Wall
CFLAGS += -Wextra
CFLAGS += -pedantic
CFLAGS += -Werror
CFLAGS += -Wmissing-declarations
CFLAGS += -DUNITY_SUPPORT_64 -DUNITY_OUTPUT_COLOR

ASANFLAGS  = -fno-common
# ASANFLAGS += -fsanitize=address
ASANFLAGS += -fno-omit-frame-pointer

SRC = $(wildcard *.h) $(wildcard *.c)

.PHONY: clox
clox:
	$(CC) $(CFLAGS) $(ASANFLAGS) $(LIBS) -o clox $(SRC)

.PHONY: clean
clean:
	rm clox

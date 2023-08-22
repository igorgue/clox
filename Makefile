SRC = $(wildcard *.h) $(wildcard *.c)

.PHONY: clox
clox:
	$(CC) -o clox $(SRC)

.PHONY: clean
clean:
	rm clox

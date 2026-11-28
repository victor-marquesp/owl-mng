CC ?= cc
CFLAGS ?= -std=c11 -Wall -Wextra -Wpedantic -O0 -g
TARGET := owl-mng
SOURCE := LINUX/tca_linux.c

.PHONY: all run clean check
all: $(TARGET)

$(TARGET): $(SOURCE)
	$(CC) $(CFLAGS) $(SOURCE) -o $(TARGET)

run: $(TARGET)
	./$(TARGET)

check:
	$(CC) $(CFLAGS) -fsyntax-only $(SOURCE)

clean:
	rm -f $(TARGET)

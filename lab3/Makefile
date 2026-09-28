CC = gcc
CFLAGS = -Wall -Wextra -std=c11
LDLIBS = -lm

SOURCE_DIR = 590MakefileLab
TARGET = fibonacci_program
SOURCES = $(SOURCE_DIR)/main.c $(SOURCE_DIR)/fibonacci.c
HEADER = $(SOURCE_DIR)/headers/fibonacci.h

all: $(TARGET)

$(TARGET): $(SOURCES) $(HEADER)
	$(CC) $(CFLAGS) -I$(SOURCE_DIR)/headers $(SOURCES) -o $(TARGET) $(LDLIBS)

run: $(TARGET)
	./$(TARGET)

clean:
	rm -f $(TARGET)

.PHONY: all run clean

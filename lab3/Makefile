CC = gcc
CFLAGS = -Wall -Wextra -std=c11
LDLIBS = -lm

SOURCE_DIR = 590MakefileLab
INCLUDE_DIR = $(SOURCE_DIR)/headers

TARGET = fibonacci_program
TEST_TARGET = fibonacci_tests

PROGRAM_SOURCES = $(SOURCE_DIR)/main.c $(SOURCE_DIR)/fibonacci.c
TEST_SOURCES = $(SOURCE_DIR)/test_fibonacci.c $(SOURCE_DIR)/fibonacci.c

PROGRAM_HEADERS = $(INCLUDE_DIR)/fibonacci.h
TEST_HEADERS = $(PROGRAM_HEADERS) $(INCLUDE_DIR)/utest.h

all: $(TARGET) $(TEST_TARGET)

$(TARGET): $(PROGRAM_SOURCES) $(PROGRAM_HEADERS)
	$(CC) $(CFLAGS) -I$(INCLUDE_DIR) $(PROGRAM_SOURCES) -o $(TARGET) $(LDLIBS)

$(TEST_TARGET): $(TEST_SOURCES) $(TEST_HEADERS)
	$(CC) $(CFLAGS) -I$(INCLUDE_DIR) $(TEST_SOURCES) -o $(TEST_TARGET) $(LDLIBS)

run: $(TARGET)
	./$(TARGET)

test: $(TEST_TARGET)
	./$(TEST_TARGET)

clean:
	rm -f $(TARGET) $(TEST_TARGET)

.PHONY: all run test clean

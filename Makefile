.PHONY: build test clean

SRC_DIR := src
BUILD_DIR := build
TEST_DIR := tests
INCLUDE_DIR := include
LIB_NAME := wedoscollex

CC := g++
CCFLAGS := -std-c++11 -O2 -I$(INCLUDE_DIR) -Wall -Wextra -Werror

SRC_FILES := $(wildcard $(SRC_DIR)/*.cpp)
OBJ_FILES := $(patsubst $(SRC_DIR)/%.cpp, $(BUILD_DIR)/obj/%.o, $(SRC_FILES))
LIB_FILE := $(BUILD_DIR)/lib/lib$(LIB_NAME).a
TEST_FILES := $(wildcard $(TEST_DIR)/test_*.cpp)
TEST_BINS := $(patsubst $(TEST_DIR)/test_%.cpp, $(BUILD_DIR)/tests/test_%, $(TEST_FILES))

build: $(OBJ_FILES)
	@mkdir -p $(BUILD_DIR)/lib
	ar rcs $(LIB_FILE) $(OBJ_FILES)

clean:
	rm -rf $(BUILD_DIR)

test: $(TEST_BINS)
	$(foreach test, $(TEST_BINS), test)


$(BUILD_DIR)/obj/%.o: $(SRC_FILES)/%.cpp
	@mkdir -p $(BUILD_DIR)/obj
	$(CC) $(CCFLAGS) -c $< -o $@

$(BUILD_DIR)/tests/test_%: $(TEST_DIR)/test_%.cpp $(SRC_FILES)/%.cpp
	@mkdir -p $(BUILD_DIR)/tests
	$(CC) $(CCFLAGS) $^ -o $@

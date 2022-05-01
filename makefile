
TARGET := calc
BUILD := build
src := $(wildcard *.c)
obj := $(src:%.c=$(BUILD)/%.o)

$(info $(src))
$(info $(obj))
$(info $(TARGET))


.PHONY: all build clean test

all: $(BUILD)/$(TARGET)

$(BUILD)/$(TARGET): $(obj)
	$(CC) $^ -o $@

$(obj): | $(BUILD)

$(BUILD):
	mkdir -p $(BUILD)

$(BUILD)/%.o: %.c
	$(CC) -c  $< -o $@

clean:
	rm -f *.o calc
	rm -rf build

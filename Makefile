export CC=gcc
export CFLAGS=-Wall

TEST_DIR=test
EXEC=$(TEST_DIR)/hello

all:$(EXEC)

$(EXEC):
	@(cd $(TEST_DIR) && $(MAKE))

.PHONY: clean mrproper $(EXEC)

clean:
	@(cd $(TEST_DIR) && $(MAKE) $@)

mrproper:
	@(cd $(TEST_DIR) && $(MAKE) $@)

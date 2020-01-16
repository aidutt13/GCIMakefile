CC = g++
CFLAGS = -Wall -c

SRCDIR = .
OBJDIR = obj

SRC = $(wildcard $(SRCDIR)/*.cpp)
OBJ = $(patsubst $(SRCDIR)/%.cpp,$(OBJDIR)/%.o,$(SRC))

PROJECT = main

$(OBJ): $(SRC)
	$(CC) $(CFLAGS) $< -o $@

$(PROJECT): $(OBJ)
	$(CC) $(CFLAGS) $< -o $@

run: $(PROJECT)
	$<

clean: $(OBJ)
	rm $<

.PHONY: clean

CC = g++
CFLAGS = -Wall -c

SRCDIR = .
OBJDIR = obj

SRC = $(wildcard $(SRCDIR)/*.cpp)
OBJ = $(patsubst $(SRCDIR)/%.cpp,$(OBJDIR)/%.o,$(SRC))

PROJECT = main

$(OBJ): $(SRC)
	$(CC) $(CFLAGS) $< -o $@
	$(CC) $@ -o $(PROJECT)
	./$(PROJECT)

clean: $(OBJ) $(PROJECT)
	rm $<

.PHONY: clean

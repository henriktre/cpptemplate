CC=g++
CFLAGS= -std=c++14 -Wall -Wextra -g -Wunreachable-code -Wuninitialized -Wnull-dereference
INCLUDE:= -Iinclude/
SOURCE:= $(wildcard src/*.cpp)

EXE=main.out

all: clean $(EXE)

$(EXE):
	$(CC) $(CFLAGS) $(INCLUDE) $(SOURCE) -o $(EXE)
		./main.out

clean:
	rm -rf $(EXE)
	rm -rf main.out.dSYM

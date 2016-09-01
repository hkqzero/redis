INC = -I./include -I./include/hiredis
LNKDIR = -L./lib
LNK = -lhiredis
SRC = ./src/*.cpp ./test/*.cpp

CC    = g++
CFLAG = -g -O3 -ggdb -Wall -Wno-deprecated  

EXE  = bin/test

all:
	$(CC) $(CFLAG) $(INC) $(LNKDIR) $(SRC) $(LNK) -o $(EXE)
clean: 
	rm -rf *.o
	rm -rf $(EXE)

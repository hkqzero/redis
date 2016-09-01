INC = -I./include -I./include/hiredis
LNKDIR = -L./lib
LNK = -lhiredis
SRC = ./src/*.cpp ./test/*.cpp

CC    = g++
CFLAG = -g -O3 -ggdb -Wall -Wno-deprecated  $(MYSQL)#-DSHOW_DEBUG #-pipe  -D_NEW_LIC -D_GNU_SOURCE -D_REENTRANT  -z defs

EXE  = bin/test

all:
	$(CC) $(CFLAG) $(INC) $(LNKDIR) $(SRC) $(LNK) -o $(EXE)
clean: 
	rm -rf *.o
	rm -rf $(EXE)

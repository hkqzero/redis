CLIB_ROOT = ../../CLIB
INC = -I./include -I$(CLIB_ROOT)/include -I$(CLIB_ROOT)/include/mysql-client -I../common
LNKDIR = -L$(CLIB_ROOT)/lib
LNK = -lccommon -lhiredis -ldl -lmysqlclientstatic -lpthread -lrt 
SRC = ./src/*.cpp ../common/*cpp
CONF = ./conf

CC    = g++
CFLAG = -g -O3 -ggdb -Wall -Wno-deprecated  $(MYSQL)#-DSHOW_DEBUG #-pipe  -D_NEW_LIC -D_GNU_SOURCE -D_REENTRANT  -z defs

EXE  = bin/limit_controller

all:
	$(CC) $(CFLAG) $(INC) $(LNKDIR) $(SRC) $(LNK) -o $(EXE)
clean: 
	rm -rf *.o
	rm -rf $(EXE)

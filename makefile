

CFLAGS= -Wall -pedantic -std=gnu99
 
all: filehound
 
filehound:
	gcc $(CFLAGS) `pkg-config --cflags --libs libnotify` filehound.c -o build/filehoundd
  

obj-m += server.o

KID := /lib/modules/`uname -r`/build
PWD := $(shell pwd) 

ifeq ($(strip $(NO_PY)),1)
obj-m := server_npy.o 
endif
  
all:  
	make -C $(KID) M=$(PWD) modules  
  
clean:  
	rm -fr  .*.cmd .tmp_versions  *.mod.c  *mod.o *.o *.ko *.c~ 

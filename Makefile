
ifneq ($(KERNELRELEASE),)
MODULE_NAME = hellomodule
# 用到的obj文件
$(MODULE_NAME)-objs := hello.o
# 生成的模块文件
obj-m := $(MODULE_NAME).o
else
KERNEL_DIR = /lib/modules/`uname -r`/build
MODULEDIR := $(shell pwd)

.PHONY: modules
default: modules

modules:
	make -C $(KERNEL_DIR) M=$(MODULEDIR) modules

clean distclean:
	rm -f *.o *.mod.c .*.*.cmd *.ko
	rm  -rf .tmp_versions


endif


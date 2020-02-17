TARGET = psp-chat
OBJS = src/PSP-Chat/main.o \
src/PSP-Chat/Globals.o \
src/PSP-Chat/framework/utils/common.o \
src/PSP-Chat/framework/gfx/RenderUtil.o \
src/PSP-Chat/framework/gfx/intrafont/glib2d.o \
src/PSP-Chat/framework/utils/Input.o \
src/PSP-Chat/framework/utils/MemoryUsage.o \
src/PSP-Chat/framework/utils/Timer.o \
src/PSP-Chat/framework/utils/valloc.o \
src/PSP-Chat/framework/gfx/intrafont/libccc.o \
src/PSP-Chat/framework/gfx/intrafont/intraFont.o \
# src/PSP-Chat/framework/connection/ConnectionManager.o \

INCDIR = $(PSPPATH)/include #/usr/local/pspdev/psp/sdk/include
#INCDIR += include include/archive include/menus src/PSP-Chat/
CFLAGS = -O3 -Wall -mpreferred-stack-boundary=4
CXXFLAGS = $(CFLAGS) -fno-exceptions -fno-rtti -std=gnu++17
ASFLAGS = $(CFLAGS)

BUILD_PRX = 1
PSP_FW_VERSION=371
PSP_LARGE_MEMORY = 0 #PHAT SUPPORT! Our app isn't that big! 

LDFLAGS =
# -losl -lmmio -lpng

# -lz -lpsphprm -lpspsdk -lpspctrl -lpsprtc -lpsppower -lpspgum -lpspgu -lpsphttp -lpspssl -lpspwlan -lpspnet_adhocmatching -lpspnet_adhoc -lpspnet_adhocctl -lm -lpspusb -lpspusbstor -lpspmp3 -lmad -lpspaudiolib -lpspaudio -lpspaudiocodec -lmikmod -lstdc++ -lpspvfpu -lpspvram -lpspreg -lpspumd
LIBS    = -lpspaudiolib -lpspaudio -lmikmod -lpspaudiocodec -lpng -lz -lpspgum -lpspgu -lstdc++ -lpsprtc -lpspctrl -lm -lpspvfpu -lpspsdk -lpsppower -lpsphttp -ljpeg

EXTRA_TARGETS = EBOOT.PBP
PSP_EBOOT_ICON= ICON0.png
PSP_EBOOT_TITLE = PSP-Chat

PSPSDK=$(shell psp-config --pspsdk-path)
include $(PSPSDK)/lib/build.mak

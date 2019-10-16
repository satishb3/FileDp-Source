SDK=/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS4.3.sdk
CC=/Developer/Platforms/iPhoneOS.platform/Developer/usr/bin/arm-apple-darwin10-gcc-4.2.1
AFLAGS= -arch armv6 -Os -Wimplicit
CFLAGS=-isysroot $(SDK)
CFLAGS_IOKIT=$(CFLAGS) -framework IOKit -framework Foundation -framework Security -framework CoreFoundation 

simple: 
	$(CC) main.m -o FileDP $(CFLAGS_IOKIT)


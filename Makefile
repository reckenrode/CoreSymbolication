PREFIX ?= /usr
SDK ?=    /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk
CFLAGS ?= -F$(SDK)/System/Library/Frameworks -I$(SDK)/usr/include -fblocks
CC      = clang

CoreSymbolication.a: CoreSymbolication.o
CoreSymbolication.o: CoreSymbolication.c
CoreSymbolication.c: CoreSymbolication.h
install: CoreSymbolication.h CoreSymbolicationPrivate.h CoreSymbolication.a
	install -D CoreSymbolication.a $(PREFIX)/lib/CoreSymbolication.a
	install -D CoreSymbolication.h $(PREFIX)/include/CoreSymbolication/CoreSymbolication.h
	install -D CoreSymbolicationPrivate.h $(PREFIX)/include/CoreSymbolication/CoreSymbolicationPrivate.h

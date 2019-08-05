# FRAMEWORKS:= -framework Foundation
LDFLAGS:= $(shell gnustep-config --base-libs)
OBJCFLAGS = $(shell gnustep-config --objc-flags)

clean:
	rm *.d hello instancing date host string calendar

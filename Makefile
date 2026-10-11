CC = gcc
AR = ar
CPPFLAGS += -I. -Ilib -Isrc
CFLAGS ?= -O2 -g
LDLIBS += -lselinux -ltinfo

STAT_OBJECTS = src/stat.o src/find-mount-point.o
VERSION_OBJECT = src/version.o

.PHONY: all clean

all: src/stat

src/stat: $(STAT_OBJECTS) $(VERSION_OBJECT) lib/libcoreutils.a
	$(CC) $(LDFLAGS) -o $@ $(STAT_OBJECTS) $(VERSION_OBJECT) \
	  lib/libcoreutils.a $(LDLIBS)

src/%.o: src/%.c
	$(CC) $(CPPFLAGS) $(CFLAGS) -MMD -MP -c -o $@ $<

clean:
	rm -f $(STAT_OBJECTS) $(VERSION_OBJECT) src/stat \
	  src/stat.d src/find-mount-point.d src/version.d

-include $(STAT_OBJECTS:.o=.d) $(VERSION_OBJECT:.o=.d)

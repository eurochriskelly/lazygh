# Makefile for installing the LazyGH script

# Variables
PREFIX ?= /usr/local
BINDIR ?= $(PREFIX)/bin
SRCDIR ?= src
EXECUTABLE ?= lazygh

# Default target
all: install

# Install target
install: $(SRCDIR)/$(EXECUTABLE)
	install -d $(DESTDIR)$(BINDIR)
	install -m 755 $(SRCDIR)/$(EXECUTABLE) $(DESTDIR)$(BINDIR)/$(EXECUTABLE)

# Clean target
clean:
	@echo "Nothing to clean"

.PHONY: all install clean

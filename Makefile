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
	@if [ ! -w $(DESTDIR)$(BINDIR) ]; then \
		echo "\n----\n\n" \
		echo "WARNING!!! You need to use sudo to install to $(DESTDIR)$(BINDIR)"; \
		echo "\n----\n\n" \
		exit 1; \
	fi
	install -d $(DESTDIR)$(BINDIR)
	install -m 755 $(SRCDIR)/$(EXECUTABLE) $(DESTDIR)$(BINDIR)/$(EXECUTABLE)

# Clean target
clean:
	@echo "Nothing to clean"

.PHONY: all install clean

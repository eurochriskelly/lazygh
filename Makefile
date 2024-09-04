# Makefile for installing the LazyGH script

# Variables
PREFIX ?= /usr/local
BINDIR ?= $(PREFIX)/bin
SRCDIR ?= src
EXECUTABLE ?= lazygh
REPO_DIR := $(shell pwd)

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
	@echo "Replacing @@REPO_DIR@@ with the current directory path..."
	@sed 's|@@REPO_DIR@@|$(REPO_DIR)|g' $(SRCDIR)/$(EXECUTABLE) > $(EXECUTABLE)_temp
	@echo "Copying $(EXECUTABLE) to $(DESTDIR)$(BINDIR)..."
	install -d $(DESTDIR)$(BINDIR)
	install -m 755 $(EXECUTABLE)_temp $(DESTDIR)$(BINDIR)/$(EXECUTABLE)
	@echo "Cleaning up temporary files..."
	@rm $(EXECUTABLE)_temp
	@echo "Installation complete: $(DESTDIR)$(BINDIR)/$(EXECUTABLE)"

# Clean target
clean:
	@echo "Nothing to clean"

.PHONY: all install clean

SHELL = /bin/sh
OPT_DIR = /opt

ifeq ($(PREFIX),)
    PREFIX := /usr/local
endif
MANPREFIX := $(PREFIX)/share/man

help:
	@echo "Use one of the following options:"
	@echo "'make install' - Installs twiner as a global package"
	@echo "'make uninstall' - Uninstalls twiner"
	@echo "'make reinstall' - Reinstalls twiner"

deps:
	@echo "Checking for dependencies..."
ifeq ($(shell command -v fzf),)
	@echo "Please install 'fzf' as it is required for some features."
else
	@echo "'fzf' found."
endif

req: deps

place:
	@echo "Installing twiner as a package..."
	sudo cp -R . $(OPT_DIR)/twiner
	@echo "Installation complete!"

manpage:
	@echo "Creating manpage..."
	sudo rsync ./man/twiner* $(MANPREFIX)/man1/
	@echo "Manpage created"

link:
	@echo "Creating links..."
	sudo ln -s $(OPT_DIR)/twiner/start $(PREFIX)/bin/twiner-start
	sudo ln -s $(OPT_DIR)/twiner/update $(PREFIX)/bin/twiner-update
	@echo "Links created!"

install: req place manpage link
	@echo "twiner is now installed!"

unlink:
	@echo "Removing links..."
	sudo rm $(PREFIX)/bin/twiner-*
	@echo "Links removed!"

uninstall: unlink
	@echo "Uninstalling twiner..."
	sudo rm -rf $(OPT_DIR)/twiner
	sudo rm $(MANPREFIX)/man1/twiner*
	@echo "Uninstallation was successful!"

reinstall: uninstall install

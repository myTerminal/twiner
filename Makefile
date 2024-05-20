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
	@echo "Looking for 'fzf'..."
ifneq ($(shell command -v fzf),)
	@echo "'fzf' found."
else
	@echo "'fzf' not found!"
	@echo "Attemping to install 'fzf' using Crater..."
	git clone https://github.com/crater-space/cli /tmp/crater-cli
	/tmp/crater-cli/crater install fzf
	rm -rf /tmp/crater-cli
endif

req: deps

place:
	@echo "Installing twiner as a package..."
	sudo cp -R . $(OPT_DIR)/twiner
	@echo "Installation complete!"

manpage:
	@echo "Creating manpage..."
	sudo mkdir -p $(MANPREFIX)/man1
	sudo cp ./man/twiner* $(MANPREFIX)/man1/
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

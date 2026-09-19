DIR := $(shell which wslpath > /dev/null 2>&1 && wslpath "$(shell wslvar APPDATA)\\vlc")
$(if $(DIR), ,$(error The installation directory is not found))

.PHONY: all install install-config uninstall uninstall-config
all:

install: install-config

install-config: vlcrc
	mkdir -p $(DIR)
	cp -a $+ $(DIR)

uninstall: uninstall-config

uninstall-config:
	rm -f $(DIR)/vlcrc

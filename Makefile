DIR := $(shell which wslpath > /dev/null 2>&1 && wslpath "$(shell wslvar APPDATA)\\vlc")
$(if $(DIR), ,$(error The installation directory is not found))

.PHONY: all install uninstall
all:

install: vlcrc
	cp -a $+ $(DIR)

uninstall:
	rm -f $(DIR)/vlcrc

SHELL = /bin/sh

INSTALL_DIR = ~/.config
BIN_INSTALL_DIR = /usr/bin
NAME = xshbar

help:
	@echo "make install          Install xshbar."
	@echo "make uninstall        Remove xshbar."

install:
	mkdir -pv ${INSTALL_DIR}/xshbar
	mkdir -pv ${INSTALL_DIR}/xshbar/plugins.use
	cp -r * ${INSTALL_DIR}/xshbar
	cp ${NAME} ${BIN_INSTALL_DIR}
	chmod +x ${BIN_INSTALL_DIR}/${NAME}
	chmod +x ${INSTALL_DIR}/xshbar/prn
	chmod +x ${INSTALL_DIR}/xshbar/config
	chmod +x ${INSTALL_DIR}/xshbar/plugins/*

uninstall:
	rm -r ${INSTALL_DIR}/${NAME}

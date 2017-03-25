# todo - tiny todo handler with dmenu
# See LICENSE file for copyright and license details.

PREFIX ?= /usr/local

# Clean based on PREFIX
install:
	@mkdir -p ${DESTDIR}${PREFIX}/bin
	@sed "s|/usr/local/share/todo|${DESTDIR}${PREFIX}/share/todo|g" todo > ${DESTDIR}${PREFIX}/bin/todo
	@chmod 755 ${DESTDIR}${PREFIX}/bin/todo
	@mkdir -p ${DESTDIR}${PREFIX}/share/todo
	@cp -f singletask ${DESTDIR}${PREFIX}/share/todo/singletask
	@chmod 755 ${DESTDIR}${PREFIX}/share/todo/singletask

.PHONY: install

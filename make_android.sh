if [ -z "${1}" ]; then
	make clean
	./configure --prefix=/system --sysconfdir=/system/etc --localstatedir=/data/misc --disable-pam --disable-lastlog --disable-utmp --disable-utmpx --disable-wtmp --disable-wtmpx --disable-shadow --enable-bundled-libtom --disable-syslog LDFLAGS=-lcrypt || exit 1
fi
make PROGRAMS="dropbear dropbearkey dropbearconvert scp" MULTI=1 "${@}" || exit 1

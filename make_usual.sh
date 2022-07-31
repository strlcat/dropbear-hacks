if [ -z "${1}" ]; then
	make clean
	./configure --prefix=/usr --sysconfdir=/etc --localstatedir=/var --disable-pam --disable-lastlog --disable-utmp --disable-utmpx --disable-wtmp --disable-wtmpx --disable-shadow --enable-bundled-libtom --disable-syslog || exit 1
fi
make PROGRAMS="dropbear dropbearkey dropbearconvert scp dbclient" MULTI=1 || exit 1

if [ -z "${1}" ]; then
	make clean
	./configure --prefix=/usr --sysconfdir=/etc --localstatedir=/var --disable-pam --disable-lastlog --disable-utmp --disable-utmpx --disable-wtmp --disable-wtmpx --disable-shadow --enable-bundled-libtom --disable-zlib --disable-syslog CC=musl-gcc LDFLAGS="-static -s" || exit 1
fi
make PROGRAMS="dropbear dropbearkey" || exit 1

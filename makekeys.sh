if [ -z "${1}" ]; then
	echo usage: makekeys.sh /path/to/ssh/
	exit 1
fi
if [ ! -d "${1}" ]; then
	echo ${1}: not a directory
	exit 1
fi
for x in rsa ecdsa ed25519; do
	if [ -f "${1}"/dropbear_${x}_host_key ]; then
		echo "${1}"/dropbear_${x}_host_key already exists
		continue
	fi
	./dropbearkey -t ${x} -f "${1}"/dropbear_${x}_host_key || (echo failed to save "${1}"/dropbear_${x}_host_key; exit 2)
done
exit 0

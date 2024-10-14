sudo cat /proc/meminfo | grep MemTotal > filtrobasico.txt
dmidecode -t chassis |grep Manufacturer >> filtrobasico.txt

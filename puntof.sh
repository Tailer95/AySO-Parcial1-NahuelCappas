#Guardar mi IP publica en filtroavanzado.txt
echo "Mi IP publica es:" $(curl -s ifconfig.me) > filtroavanzado.txt
#Guardar mi usuario en filtroavanzado.txt
echo "Mi usuario es:" $whoami > filtroavanzado.txt
#Guardar mi contraseña del usuario 
echo "El hash o pass encripatada de misusuario:" >> filtroavanzado.txt
sudo cat /etc/shadow |grep vagrant |awk -F ':' '{print $2}' >> filtroavanzado.txt

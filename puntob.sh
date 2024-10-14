#Dividir el disco de 10GB en:
4 particiones de iguales tamaños: 3 particiones primarias y 1 extendida
sudo fdisk /dev/sdc
hacer esto para cada una de las particiones
n para nuevo
p primaria
1
#enter tomar el por defecto de inicio
+1G porque piden 10 particiones iguales
w guardar
p ver particiones
sudo fdisk -l
sudo fdisk /dev/sdc4
p # Ver la tabla de particiones
n # Crear una nueva partición
e # Partición extendida
<Enter> # Aceptar el sector de inicio por defecto
+1G # Tamaño de la partición extendida (ajusta según tus necesidades)

#Formatear las particiones con ext4.
mkfs es una herramienta de línea de comandos en Linux que se utiliza para crear y
formatear sistemas de archivos.

#para cada una de las particiones creadas
sudo mkfs.ext4 /dev/sdc1
sudo mkfs.ext4 /dev/sdc2
sudo mkfs.ext4 /dev/sdc3
sudo mkfs.ext4 /dev/sdc4


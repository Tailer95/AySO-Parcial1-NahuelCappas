#Crear usuarios y grupos
sudo useradd developer
sudo useradd tester1
sudo useradd devops1
sudo useradd devops2
sudo groupadd grupodevops
sudo groupadd devops1
sudo groupadd grupotesters
#Asignar usuarios a grupos
sudo usermod -aG gropodevops developer1
sudo usermod -aG grupodevelopers developer1
sudo usermod -aG grupotesters tester1
sudo usermod -aG gropodevops develop1
sudo usermod -aG gropodevelopers develop1
sudo usermod -aG gropodevops develop2
#Asignar dueños y grupos a cada directorio con sus respectivos permisos
sudo chown -R developer1:grupodevelopers Examenes-UTN/alumno_1
sudo chmod -R 750 Examenes-UTN/alumno_1
sudo chown -R tester1:grupotesters Examenes-UTN/alumno_2
sudo chmod -R 760 Examenes-UTN/alumno_2
sudo chown -R devops:grupodevops Examenes-UTN/alumno_3
sudo chmod -R 700 Examenes-UTN/alumno_3
sudo chown -R devops2:grupodevops Examenes-UTN/profesores
sudo chmod -R 775 Examenes-UTN/profesores
#Entro a cada usuario para crear el archivo validar.txt con whoami
su - developer1
cd Examenes-UTN/alumno_1
whoami > validar.txt
su - tester1
cd Examenes-UTN/alumno_2
whoami > validar.txt
su - devops1
cd Examenes-UTN/alumno_3
whoami > validar.txt
su - devops2
cd Examenes-UTN/prefesores
whoami > validar.txt

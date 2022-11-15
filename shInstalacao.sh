#!/bin/bash
sudo apt update && sudo apt upgrade -y
java --version
if [ $? -eq 0 ];
then
	echo "Verificando a versão"
	if [ $version != 18 ];
	then
		echo "Versão do java direfente do 18"
		sudo apt list --installed | grep open jdk
		sudo apt rm $?
		echo "Iniciando a instalação"
		sudo apt-get install openjdk-18-jdk
	else
		echo "Versão do java correta"
	fi
else
	echo "Java não instalado, iniciando a instalação"
	sudo apt-get install openjdk-18-jdk
fi
docker --version
if [ $? > 0 ];
then
	echo "TESTE PARA VER SE FUNCIONA IF"
	sudo apt install docker.io -y
	sudo systemctl start docker
	sudo systemctl enable docker
	sudo docker build -t mysql .
	sleep 30
	sudo docker run --name PontoSa -p 3306:3306 mysql
	sleep 10
	
else
	echo "TESTE PARA VER SE FUNCIONA ELSE"
	sudo docker start PontoSa
fi
	
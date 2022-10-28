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
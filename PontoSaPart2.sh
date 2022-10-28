#!/bin/bash
docker --version
if [ $? > 0 ];
then
	echo "TESTE PARA VER SE FUNCIONA IF.............................................................................................................................................................................."
	apt install docker.io -y
	systemctl start docker
	systemctl enable docker
	docker pull mysql:5.7
	docker run -d -p 3306:3306 --name PontoSa -e "MYSQLDATABASE=PontoSa" -e "MYSQL_ROOT_PASSWORD=urubu100" mysql:5.7
	docker exec -it PontoSa bash
	exit
	mysql -u root -p
	urubu100
else
	echo "TESTE PARA VER SE FUNCIONA ELSE por que n ta aindo.............................................................................................................................................................................."
	apt install docker.io -y
	systemctl start docker
	systemctl enable docker
	docker pull mysql:5.7
	docker run -d -p 3306:3306 --name PontoSa -e "MYSQLDATABASE=PontoSa" -e "MYSQL_ROOT_PASSWORD=urubu100" mysql:5.7
	docker exec -it PontoSa bash
	exit
	mysql -u root -p
	urubu100
fi
# README

# EasyBroker

## Prerrequisitos

* Ruby 2.3.1p112
* Rails 5.2.1
* Gemas: will_paginate, rake y whenever ya agregadas en el GEmfile

## Instalación

* git clone https://github.com/Wangrek/EasyBroker.git
* cd EasyBroker/
* bundle install
* rake db:migrate

## Levantar proyecto

* Correr el siguiente comando desde consola para levantar el scheduler:
	whenever --update-crontab --set environment='development' 

* Ver los procesos en ejecución:
	crontab -l

NOTA: Se deja configurada la ejecución del proceso de actualización cada minuto para efectos de prueba, pero se deja comentado el requerimiento de cada 8 horas en
	  el archivo config/schedule.rb

* Levanatar server con nohup:
	nohup rails s &

* Abrir la siguiente url en el navegador:
	http://localhost:3000/

El archivo XML se encuentra dentro de la raíz del proyecto por si se desean hacer cambios dentro de este.


## Bajar proyecto

* Borrar los procesos en ejecución del scheduler:
	crontab -r

* Bajar el server: Buscar proceso de ruby y matarlo.
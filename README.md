# Controv3rsial
Proyecto para la asignatura de Infraestructuras Virtuales

Bajo Licencia: [![License: GPL v3](https://img.shields.io/badge/License-GPLv3-blue.svg)](https://www.gnu.org/licenses/gpl-3.0)

Travis Build: [![Build Status](https://travis-ci.org/jdafer98/Controv3rsial.svg?branch=master)](https://travis-ci.org/jdafer98/Controv3rsial)

Circle-ci Build: [![CircleCI](https://circleci.com/gh/jdafer98/Controv3rsial.svg?style=svg)](https://circleci.com/gh/jdafer98/Controv3rsial)

Lenguaje: [![Powered by: Python](https://img.shields.io/badge/powered%20by-python-yellow)](https://www.python.org/)


## Planteamiento

El proyecto se plantea como un servicio web para realizar encuestas. Un usuario anónimo podrá comenzar una encuesta (y posteriormente cerrarla cuando desee) y obtener un enlace (o un token en formato de "hashcode"). Ese enlace puede ser publicado donde se desee y permite una votación anónima en la encuesta a donde dicho enlace pertenezca. Ese enlace tambíen servirá para consultar el estado de la encuesta.

En principio el usuario opera con la API REST anteriormente mencionada y mediante un método de HTTP, interactua con una instancia de la clase "Encuestas". Esta clase contiene toda la fucnionalidad que se espera de la aplicación, en su mayoria operaciones de inserción, consulta y borrado de la base de datos.

Los codigos de operación (200 OK, 404 NOT FOUND...) y toda la información correspondiente a la operación realizada se devolverá en formato JSON.

__**NOTA:**__ *En caso de ser una aplicación demasiado grande para considerarse un microservicio, consideraremos solo la primera mitad. Es decir, un servicio para crear encuestas, pero no para votar en ellas.*

El lenguaje de programación elegido será **python**

## Tecnología 

 - __Sistema de logs:__ Nuestro proyecto incluirá una utilidad para llevar registro de todos los cambios de la aplicación y cuando estos han sido producidos. La tecnología elegida es **logstash**

 - __Integración continua:__ Incluiremos también un sistema de integración continua para verificar que los nuevos cambios producidos en la aplicación son consistentes y no producen errores de primer orden. Utilizaremos **Travis**

 - __Almacenamiento de datos:__ Nuestra aplicación debe almacenar solo y exclusivamente información sobre encuestas. Nada más. una sola tabla con identificador, fecha_inicio, fecha_fin, opcion_1, votos_opción_1... Elegiremos por tanto una base de datos no relacional como **MongoDB**

 - __API:__ El formato de la API será una api REST y será desarrollada con **flask**

 - __Entornos Virtuales:__ Como se implementarán en python, usaremos **pipenv** y no **virtualenv** apostando por la sugerencia del profesor de la asignatura.

 - __Clase:__ Una clase **"Encuestas"** representará todas las operaciones con la base de datos referentes a las encuestas. Crear una encuesta, borrarla, actualizar el numero de votos... 

 - __Dependencias:__ Se incluirá un fichero **requirements.txt** para ser ejecutado con pip -r

 - __Test unitarios:__ No se descarta usar **unitest** o **pytest** para implementar TDD en el desarrollo de la aplicación.

 - __Despliegue:__ Probablemente **Heroku** o **Azure**. Lo que tenga disponible antes. 

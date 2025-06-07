---
layout: post
title: "Primeros pasos en Linux"
date: 2025-06-05
category: linux
subcategory: basico
description: Guía inicial para conocer el entorno Linux y familiarizarse con el terminal.
---


Para todo el contenido utilizaré el sistema Ubuntu, pero puedes utilizar el el linux que mejor se adapte a ti. Tienes que tener en cuenta que algunos comandos varían ya que hay ciertas diferencias en los paquetes de distintas distribuciones.

## INTERFAZ DE LÍNEA DE COMANDOS (CLI)

La **Interfaz de Línea de Comandos** (CLI, por sus siglas en inglés) es una forma de interactuar con el sistema operativo a través de texto. En lugar de hacer clic sobre iconos o menús gráficos, el usuario introduce comandos directamente, y el sistema los ejecuta.

Este entorno está disponible gracias a una aplicación llamada **terminal**. El terminal recibe lo que escribimos y lo transmite a un programa llamado **shell** (intérprete de comandos), que se encarga de interpretar las instrucciones.  
Si el comando es válido, veremos un resultado o salida en el terminal. Si hay algún error, el sistema nos devolverá un mensaje explicando lo que ha fallado.

---

## 1.1 Acceso al Terminal

En Ubuntu, existen varias formas de abrir el terminal. A continuación, te muestro dos de las más comunes:

1. Presionando las teclas `Ctrl` + `Alt` + `T` al mismo tiempo.
2. Buscando la palabra **"Terminal"** en el menú de aplicaciones del sistema.

## Imagen de ejemplo

![Descripción de la imagen](/assets/images/linux/primeros-pasos.png)

---

## 1.2 - Prompt

Cuando abrimos una ventana del terminal, aparece lo que se conoce como **prompt** (o *símbolo del sistema*). Este símbolo se muestra cuando no se está ejecutando ningún comando, y también aparece una vez que finaliza la salida de un comando anterior.

El prompt es una indicación visual que le dice al usuario que puede escribir un nuevo comando.

Su estructura puede variar dependiendo de la distribución de Linux, pero normalmente incluye información útil como:

- El **nombre del usuario actual**.
- El **nombre del equipo o máquina**.

Por ejemplo, un prompt típico en Ubuntu podría verse así:

```bash
usuario@equipo:~$
```

Esto nos indica que el usuario actual se llama *usuario* y el nombre del equipo es *equipo*, y que estamos ubicados en el directorio personal (~). El símbolo (~) se utiliza como abreviación para el directorio principal del usuario que se encuentra en **/home** .
Podemos ver el nombre de nuestra máquina en el fichero **/etc/hostname** y el directorio donde nos encontramos con el comando *pwd*
	
```bash
usuario@equipo:~$ cat /etc/hostname
equipo
usuario@equipo:~$ pwd
/home/usuario
usuario@equipo:~$
```
También podemos apreciar que el prompt de un usuario normal finaliza con el
símbolo **$**, pero cuando es **root** *(administrador del sistema)* el que está trabajando su
prompt finaliza con el símbolo **#**.

```bash
root@equipo:~# pwd
/root
```
---

## 1.3 - Shell

Un shell es el intérprete que traduce los comandos introducidos por un usuario en
acciones a realizar por el sistema operativo.
El entorno Linux proporciona muchos tipos diferentes de shells y el más
comúnmente utilizado para las distribuciones de Linux se llama **BASH**.
Para saber la Shell con la que estamos trabajando, visualizamos el valor de la
variable de entorno **SHELL** con el comando *echo*.

```bash
usuario@equipo:~$ echo $SHELL
/bin/bash
```

Para saber la versión que estamos utilizando usamos el comando:

```bash
usuario@equipo:~$ bash --version
GNU bash, version 5.1.16(1)-release (x86_64-pc-linux-gnu)
Copyright (C) 2020 Free Software Foundation, Inc.
License GPLv3+: GNU GPL version 3 or later <http://gnu.org/licenses/gpl.html>

This is free software; you are free to change and redistribute it.
There is NO WARRANTY, to the extent permitted by law.
```

---

## 1.4 - Historial de comandos

Al ejecutar un comando en una terminal, el comando queda registrado en el fichero **.bash_history**
Esto está diseñado para que más adelante podamos ejecutar el mismo comando más
fácilmente puesto que no necesitarás volver a introducir el comando entero.
Esto lo podemo visualizar con el comando *history*:

```bash
usuario@equipo:~$ history
  1  ls 
  2  ls -l
  3  bash --version
```
	
- **Recuperar un comando:** Pulsando la tecla de flecha hacia arriba **↑**  se mostrará el
comando anterior. Podemos presionar arriba repetidas veces
con lo cual avanzamos desde el último al primero de la lista (también
evidentemente podemos bajar pulsando tecla flecha abajo).

- **Editar un comando:** Cuando encuentres el comando que quieras ejecutar, puedes utilizar las teclas de flecha hacia izquierda o derecha **←** o **→** para colocar el cursor para edición.

- **Ejecutar un comando con el número de lista:** Si tenemos muchos comandos almacenados en el historial, que será lo normal si hacemos uso del terminal, nos resultará más cómodo utilizar directamente el número de la lista en lugar de buscarlo mediante las flechas. Esto se puede hacer con el comando *!(Número de línea)* ,por ejemplo:

```bash
  22  echo $SHELL
  23  ls 
  24  ls -l
  25  bash --version
usuario@equipo:~$ !22
echo $SHELL
/bin/bash
```

## VARIABLES DE BASH SHELL

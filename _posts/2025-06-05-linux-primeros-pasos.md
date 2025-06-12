---
layout: post
title: "Primeros pasos en Linux"
date: 2025-06-05
category: linux
subcategory: basico
description: Guía inicial para conocer el entorno Linux y familiarizarse con el terminal.
---


Para todo el contenido utilizaré el sistema **Ubuntu**, pero puedes utilizar el linux que prefieras, solo tienes que tener en cuenta que algunos comandos varían en versiones ya que hay ciertas diferencias en los paquetes de distintas distribuciones.

## INTERFAZ DE LÍNEA DE COMANDOS (CLI)

La **Interfaz de Línea de Comandos** (CLI, por sus siglas en inglés) es una forma de interactuar con el sistema operativo a través de texto. En lugar de hacer clic sobre iconos o menús gráficos, el usuario introduce comandos directamente, y el sistema los ejecuta.

Este entorno está disponible gracias a una aplicación llamada **terminal**. El terminal recibe lo que escribimos y lo transmite a un programa llamado **shell** (intérprete de comandos), que se encarga de interpretar las instrucciones.  
Si el comando es válido, veremos un resultado o salida en el terminal. Si hay algún error, el sistema nos devolverá un mensaje explicando lo que ha fallado.

---

## 1 - Acceso al Terminal

En Ubuntu, existen varias formas de abrir el terminal. A continuación, te muestro dos de las más comunes:

1. Presionando las teclas `Ctrl` + `Alt` + `T` al mismo tiempo.
2. Buscando la palabra **"Terminal"** en el menú de aplicaciones del sistema.

---

## 2 - Prompt

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

## 3 - Shell

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

## 4 - Historial de comandos

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
---

## VARIABLES DE BASH SHELL

En Bash, una variable es una herramienta que permite almacenar datos temporalmente en la memoria del sistema. Estas variables tienen un nombre asignado y se eliminan automáticamente al cerrar la ventana del terminal o shell. Aun así, muchas variables importantes se recrean de forma automática al iniciar un nuevo shell.

Para visualizar el contenido de una variable, usamos el comando:

```bash
echo $NOMBRE_VARIABLE
```

## - LA VARIABLE PATH

Antes de hablar en detalle sobre la variable **$PATH**, es importante entender la clasificación de los comandos en el entorno Bash:

- **📌 Comandos Internos:** Son conocidos también como comandos integrados. Están incluidos dentro del propio shell. Un ejemplo clásico es:

```bash
cd
```
Este comando permite cambiar de directorio y no requiere archivos externos, ya que Bash lo reconoce y ejecuta directamente.

- **📁 Comandos Externos:** Son comandos que no están integrados en el shell. En su lugar, Bash debe buscarlos como archivos ejecutables dentro de una lista de directorios definida por la variable PATH.

Por ejemplo:

```bash
ls
```

Cuando ejecutamos *ls*, Bash busca un archivo llamado *ls* en los directorios listados dentro de **PATH**.

### **¿Qué es PATH?**
PATH es una variable de entorno que contiene una lista de directorios, separados por dos puntos :, donde el sistema buscará los comandos externos que deseamos ejecutar.

Si introduces un comando y recibes un error como:

```bash
command not found
```

Significa que Bash no ha podido encontrar un archivo ejecutable con ese nombre en los directorios listados en la variable PATH.

```bash
echo $PATH
```

Esto mostraá algo como:

```bash
/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
```

Cada uno de estos directorios es un lugar donde Bash buscará comandos externos.

### Añadiendo directorios al PATH

Cuando creamos nuestros propios scripts, podemos querer ejecutarlos desde cualquier lugar del sistema sin escribir la ruta completa. Para eso, debemos añadir el directorio que contiene nuestros scripts a la variable de entorno **`PATH`**.

#### ✅ Forma temporal (solo en la sesión actual)

```bash
export PATH="$PATH:$HOME/scripts"
```

Este cambio solo dura mientras la terminal esté abierta. Al cerrarla, el valor del **`PATH`** volverá al original.

#### ✅ Forma permanente (solo terminal interactiva)
Añade esta línea al final del archivo ~/.bashrc:

```bash
export PATH="$PATH:$HOME/scripts"
```

Después de editar, aplica los cambios con:

```bash
source ~/.bashrc
```

Este método es ideal si trabajas principalmente desde la terminal.

#### ✅ Forma permanente (sesiones gráficas y terminal)
Si deseas que el cambio se aplique en todos los contextos (sesiones SSH, gráficas, shells de login, etc.), edita el archivo ~/.profile y añade:

```bash
export PATH="$PATH:$HOME/scripts"
```

Después, cierra y vuelve a iniciar sesión para que el cambio tenga efecto.

- **💡 Consejo:** Crea un directorio *scripts* en tu carpeta personal si aún no existe:

```bash
mkdir -p $HOME/scripts
```

Ahora puedes colocar allí tus scripts personales y ejecutarlos fácilmente desde cualquier lugar.

Para visualizar las variables de entorno usamos el comando **`printenv`** o **`env`**

---

## UTILIZAR VARIOS COMANDOS A LA VEZ

### PUNTO Y COMA
El punto y coma puede utilizarse para ejecutar varios comandos de forma consecutiva en una sola línea.
Cada comando se ejecuta de manera independiente: el segundo comando se ejecutará tan pronto como finalice el primero, sin importar si este tuvo éxito o no.
Del mismo modo, el tercero se ejecutará al terminar el segundo, y así sucesivamente.

```bash
usuario@equipo:~$ echo $PATH;date;pwd
/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games:/snap/bin:/snap/bin
lun 05 jun 2025 00:00:00 WEST
/home/usuario
```

### AMPERSAND DOBLE &&
El símbolo de ampersand doble **(&&)** actúa como un operador lógico "y".
Esto significa que el segundo comando (el que está a la derecha del &&) solo se ejecutará si el primero ha tenido éxito (es decir, si ha devuelto un código de salida 0).

Este operador es útil para encadenar comandos que dependen uno del otro.

```bash
usuario@equipo:~$ mkdir nueva_carpeta && cd nueva_carpeta
usuario@equipo:~/nueva_carpeta$ pwd
/home/usuario/nueva_carpeta
```
En este caso si el primero comando falla el segundo no se ejecuta. Por ejemplo:

```bash
usuario@equipo:~$ ls /root && date
ls: cannot open directory '/root': Permission denied
usuario@equipo:~$
```

### LINEA VERTICAL DOBLE ||
El símbolo **(||)** actúa como el operador lógico "or", Si el primer comando se ejecuta con éxito, el segundo comando se omite. Si el primer comando falla, entonces se ejecutará el segundo.

```bash
usuario@equipo:~$ ls /root || date
ls: cannot open directory '/root': Permission denied
lun 05 jun 2025 00:00:00 WEST
usuario@equipo:~$
```

---

## Alias en Linux

Un **alias** puede utilizarse para asignar comandos más largos a secuencias más cortas, o lo que es lo mismo, una **redefinición de comandos**.

Sirven para facilitar el trabajo en la terminal y hacer más eficiente la ejecución de tareas repetitivas.

### Ver los alias actuales

Para visualizar los alias que el sistema tiene predefinidos, puedes usar el siguiente comando:

```bash
alias
alias alert='notify-send --urgency=low -i "$([ $? = 0 ] && echo terminal || echo error)" "$(history|tail -n1|sed -e '\''s/^\s*[0-9]\+\s*//;s/[;&|]\s*alert$//'\'')"'
alias egrep='egrep --color=auto'
alias fgrep='fgrep --color=auto'
alias grep='grep --color=auto'
alias l='ls -CF'
alias la='ls -A'
alias ll='ls -alF'
alias ls='ls --color=auto'
```

Los alias que aparecen como resultado han sido creados por los archivos de inicialización, que se ejecutan automáticamente al iniciar el sistema.

### Crear un alias personalizado

Puedes crear un nuevo alias con la siguiente sintaxis:

```bash
alias nombre='comando'
```

Donde:

- **Nombre:** es el nombre que le quieres dar al alias.

- **Comando:** es el comando que se ejecutará cuando utilices el alias.

Por ejemplo:

```bash
alias actualizar='sudo apt update && sudo apt upgrade'
```

Este alias permite ejecutar la actualización del sistema con solo escribir `actualizar`.

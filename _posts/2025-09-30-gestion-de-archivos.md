---
title: "Gestión de archivos y directorios"
date: 2025-09-30
category: linux
description: "Introducción a la gestión de archivos y directorios en Linux."
layout: post
subcategory: basico
---
 
En Linux, la organización del sistema de archivos es fundamental. Aprender a moverse entre directorios, crear, copiar, mover y eliminar archivos es una de las habilidades básicas que todo usuario debe dominar.

Algunos comandos esenciales son: 

- **`pwd`** → Muestra el directorio de trabajo actual. 
- **`ls`** → Lista el contenido de un directorio. 
- **`cd`** → Cambia de directorio. 
- **`mkdir`** → Crea un directorio. 
- **`rmdir`** → Elimina un directorio vacío.
- **`cp`** → Copia archivos o directorios. 
- **`mv`** → Mueve o renombra archivos o directorios.
- **`rm`** → Elimina archivos o directorios.
- **`cat`** → Visualizar el contenido de un fichero.

Estos comandos forman la base para manejar la información en Linux y te permitirán gestionar tu sistema de forma eficiente.

---

## El comando `ls`

El comando `ls` (abreviatura de *listar*) se utiliza para mostrar el contenido de un directorio en Linux. Es uno de los más usados y cuenta con muchas opciones que permiten personalizar su salida. 

### Opciones más comunes

- `ls -a` → Muestra **todos los archivos**, incluyendo los ocultos (los que empiezan con `.`). 
- `ls -l` → Muestra la información en formato **largo**. 
- `ls -lh` → Igual que `-l`, pero con tamaños en formato **legible para humanos** (KB, MB, GB). 
- `ls -R` → Lista el contenido de los subdirectorios de forma **recursiva**. 
- `ls -S` → Ordena los archivos por **tamaño**. 
- `ls -t` → Ordena los archivos por **fecha de modificación**. 
- `ls -r` → Invierte el orden de la salida. 

### Desglose de `ls -l`

El formato largo de `ls -l` muestra información detallada de cada archivo o directorio: 

1. **Primer carácter** 
   - `-` → archivo 
   - `d` → directorio 
   - `l` → enlace (link) 

2. **Permisos** 
   Ejemplo: `rwxr-xr-x` 
   - Usuario propietario → `rwx` 
   - Grupo propietario → `r-x` 
   - Otros usuarios → `r-x` 

3. **Número de enlaces** 
   Indica cuántos vínculos duros apuntan al archivo. 

4. **Propietario y grupo** 
   Quién es el dueño del archivo/directorio. 

5. **Tamaño en bytes** 
   - Ejemplo: `93` o `4096` 
   - Con `-h`, se muestran en unidades legibles: KB, MB, GB.

6. **Fecha y hora** 
   Indica la última modificación. 

7. **Nombre del archivo o directorio** 

---

✅ En resumen, `ls` no solo lista archivos, sino que con sus opciones te da una visión mucho más completa de tu sistema de archivos. 

---

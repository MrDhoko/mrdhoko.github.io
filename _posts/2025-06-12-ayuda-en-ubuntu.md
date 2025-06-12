---
title: "Ayuda en ubuntu"
date: 2025-06-12
category: linux
description: "Saber encontrar ayuda cuando trabajas en Linux es una habilidad esencial para cualquier usuario."
layout: post
subcategory: basico
---

Consultar la documentación o las opciones de ayuda te permite recordar cómo funciona un comando, además de ser un recurso muy útil al aprender nuevos comandos o herramientas en el sistema.

----

## 📖 man (manual)

El comando `man` muestra el manual completo de un comando.

```bash
man comando
```

Ejemplo:

```bash
man ls
```

Se abrira la guía del comando. Para salir del manual, presiona q.

<p align="center">
  <img src="/assets/img/ayuda-en-ubuntu/man.png" alt="Página man" style="max-width: 90%; height: auto; border-radius: 8px; box-shadow: 0 0 10px rgba(0,0,0,0.3);">
</p>


---

## 🧩 --help

La mayoría de los comandos aceptan la opción `--help` o `-h`, que muestra una descripción breve de las opciones disponibles.

```bash
comando --help
```

Ejemplo:

```bash
ls --help
```

Es útil cuando necesitas una referencia rápida.

<p align="center">
  <img src="/assets/img/ayuda-en-ubuntu/help.png" alt="Ayuda help" style="max-width: 90%; height: auto; border-radius: 8px; box-shadow: 0 0 10px rgba(0,0,0,0.3);">
</p>


---

## 🧠 info

El comando `info` ofrece documentación más detallada que `man` en algunos casos, especialmente en GNU/Linux.

```bash
info comando
```

Ejemplo:

```bash
info ls
```

Se navega con las teclas del cursor y se sale con q.

<p align="center">
  <img src="/assets/img/ayuda-en-ubuntu/info.png" alt="Página info" style="max-width: 90%; height: auto; border-radius: 8px; box-shadow: 0 0 10px rgba(0,0,0,0.3);">
</p>


---

## 🔎 whatis

Muestra una descripción muy breve del comando.

```bash
whatis comando
```

Ejemplo:

```bash
whatis ls
```

Si no devuelve nada, puede que necesites actualizar la base de datos con:

```bash
sudo mandb
```

<p align="center">
  <img src="/assets/img/ayuda-en-ubuntu/whatis.png" alt="Comando whatis" style="max-width: 90%; height: auto; border-radius: 8px; box-shadow: 0 0 10px rgba(0,0,0,0.3);">
</p>


---

## 💬 Ayuda integrada en algunos comandos

Algunos comandos, como git, apt, o systemctl, tienen ayuda integrada. Puedes acceder con: `comando help`

```bash
git help
```

<p align="center">
  <img src="/assets/img/ayuda-en-ubuntu/githelp.png" alt="Parámetro help" style="max-width: 90%; height: auto; border-radius: 8px; box-shadow: 0 0 10px rgba(0,0,0,0.3);">
</p>


Estas herramientas te permitirán desenvolverte mejor en el entorno de terminal, especialmente cuando trabajas con nuevos comandos o deseas repasar opciones disponibles.

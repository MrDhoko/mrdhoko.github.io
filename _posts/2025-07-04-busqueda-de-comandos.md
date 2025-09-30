---
title: "Búsqueda de los Comandos y la Documentación"
date: 2025-07-04
categories: [linux]
layout: post
subcategory: basico
description: Aprende cómo localizar comandos, manuales y binarios en tu sistema usando herramientas como `whereis` y `which`.
---

## 🔍 Búsqueda de los Comandos y la Documentación

Cuando trabajamos con Linux, es común querer saber **dónde está ubicado un comando** en el sistema o dónde encontrar su documentación. A continuación, veremos herramientas clave para obtener esa información.

---

### 📌 ¿Dónde se localiza un comando?

Para saber en qué directorio del sistema se encuentra un comando y en qué sección del manual está catalogado, podemos usar el comando:

```bash
whereis nombre_del_comando
```

🧪 Ejemplo:

```bash
whereis grep
```

Este comando devuelve algo como:

```bash
grep: /usr/bin/grep /usr/share/man/man1/grep.1.gz /usr/share/info/grep.info.gz
```

- */bin/grep*: Ubicación del binario ejecutable
- */usr/share/man/man1/grep.1.gz*: página del manual **(man)**.
- */usr/share/info/grep.info.gz*: Página de documentación para **info**.

---

### 🎯 Filtrar resultados con whereis

Si solo quieres ver el binario, puedes usar:

```bash
whereis -b grep
```

Si solo te interesa la página del manual, usa:

```bash
whereis -m grep
```

---


### 🧠 Comando which

El comando **which** busca únicamente la ubicación del binario que se ejecutará al llamar a un comando, según lo que esté definido en la variable **PATH**.

🧪 Ejemplo:

```bash
which grep
```

Salida:

```bash
/bin/grep
```

Esto te indica exactamente qué archivo se ejecutará cuando escribas grep en la terminal.

Estas herramientas son muy útiles para entender el comportamiento del sistema, especialmente cuando tienes múltiples versiones de un mismo comando o estás escribiendo scripts y necesitas saber rutas exactas.

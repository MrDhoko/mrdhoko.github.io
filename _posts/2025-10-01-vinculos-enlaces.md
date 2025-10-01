---
title: "Vínculos o enlaces en Linux"
date: 2025-10-01
category: linux
description: "Diferencia entre vínculos simbólicos y vínculos duros en Linux"
layout: post
subcategory: basico
---

En Linux, un **enlace (link)** es una referencia a un archivo. Existen dos tipos principales de enlaces: 

1. **Vínculos duros (hard links)** 
2. **Vínculos blandos o simbólicos (soft links o symlinks)** 

Aunque ambos permiten acceder a un archivo a través de diferentes nombres, su funcionamiento interno es distinto. 

---

## 1. Vínculo duro (Hard Link)

Un **hard link** es como un “nombre adicional” para un mismo archivo.
En Linux, los archivos se identifican por un **inodo** (número único en el sistema de archivos). Un hard link apunta directamente al inodo del archivo original. 

 **Características principales:**
  - El archivo original y el hard link son **idénticos**: ambos apuntan al mismo inodo. 
  - Si se elimina el archivo original, el hard link seguirá funcionando mientras quede al menos un enlace apuntando al inodo. 
  - No se pueden crear hard links entre distintos sistemas de archivos o particiones. 
  - No se pueden crear hard links a directorios (por seguridad). 

- **Ejemplo:**

```bash
  echo "Hola Linux" > archivo.txt
  ln archivo.txt enlace-duro.txt
```

Ahora existen dos nombres diferentes (archivo.txt y enlace-duro.txt) que apuntan al mismo contenido.
Si editamos uno, el cambio se refleja en el otro.

Podemos comprobarlo con:

```bash
  ls -li
```

Observaremos que ambos tienen el mismo número de inodo (290186).

```bash
  290186 -rw-rw-r-- 2 webill webill   41 jun  4 15:59  archivo.txt
  290186 -rw-rw-r-- 2 webill webill   41 jun  4 15:59  enlace-duro.txt
```

---

## 2. Vínculo blando o simbólico (Soft Link)

Un **soft link (también llamado symlink)** funciona como un acceso directo en Windows.
Es un archivo especial que contiene la ruta hacia otro archivo.

**Características principales:**

  - Si el archivo original se elimina, el symlink queda roto (apunta a una ruta inexistente).
  - Puede enlazar archivos entre distintas particiones.
  - Puede apuntar tanto a archivos como a directorios.

- **Ejemplo:**

```bash
ln -s archivo.txt enlace-blando.txt
```

Ahora enlace-blando.txt apunta a archivo.txt.
Si borramos archivo.txt, el symlink dejará de funcionar.

Lo vemos con:

```bash
ls -l
```

→ El symlink muestra una flecha indicando hacia dónde apunta:

```bash
enlace-blando.txt -> archivo.txt
```
### Diferencias principales

| Característica                              | Vínculo duro (Hard link)           | Vínculo blando (Soft link)  |
| ------------------------------------------- | ---------------------------------- | --------------------------- |
| Apunta al…                                  | Inodo del archivo                  | Nombre/ruta del archivo     |
| ¿Sigue funcionando si se borra el original? | ✅ Sí, mientras quede un hard link | ❌ No, el symlink queda roto |
| ¿Entre particiones?                         | ❌ No                              | ✅ Sí                        |
| ¿Puede enlazar directorios?                 | ❌ No                              | ✅ Sí                        |
| ¿Número de inodo?                           | Igual al original                  | Diferente                   |

### Conclusión

Conclusión

- Los hard links son útiles para mantener múltiples nombres para un mismo archivo de forma robusta.

- Los soft links son más flexibles, permiten enlazar directorios y particiones diferentes, pero dependen de que el archivo original exista.

<div style="text-align: center;">
 <img src="/assets/img/vinculos-blandos-duros/vinculos-en-linux.png" alt="Enlaces en Linux" width="50%">
</div>

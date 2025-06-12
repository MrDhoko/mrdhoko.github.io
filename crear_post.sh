#!/bin/bash

# Fecha actual
FECHA=$(date +%Y-%m-%d)

# Preguntar datos del post
read -p "Título del post: " TITULO
read -p "Nombre del fichero (sin extensión, sin fecha): " FILENAME
read -p "Categoría: " CATEGORIA
read -p "¿Tiene subcategoría? (s/n): " RESPUESTA_SUB

if [[ "$RESPUESTA_SUB" == "s" || "$RESPUESTA_SUB" == "S" ]]; then
    read -p "Subcategoría: " SUBCATEGORIA
else
    SUBCATEGORIA=""
fi

read -p "¿Quieres añadir una descripción? (s/n): " RESPUESTA_DESC

if [[ "$RESPUESTA_DESC" == "s" || "$RESPUESTA_DESC" == "S" ]]; then
    read -p "Descripción del post: " DESCRIPCION
else
    DESCRIPCION=""
fi

# Reemplazar espacios por guiones en el nombre del fichero
FILENAME_CLEAN=$(echo "$FILENAME" | tr '[:upper:]' '[:lower:]' | sed 's/ /-/g')
TITULO_ESCAPADO=$(echo "$TITULO" | sed 's/"/\\"/g')

# Ruta del archivo
RUTA="_posts/${FECHA}-${FILENAME_CLEAN}.md"

# Crear archivo con front matter
{
echo "---"
echo "title: \"$TITULO_ESCAPADO\""
echo "date: $FECHA"
echo "category: $CATEGORIA"
if [[ -n "$DESCRIPCION" ]]; then
    echo "description: \"$DESCRIPCION\""
fi
echo "layout: post"
if [[ -n "$SUBCATEGORIA" ]]; then
    echo "subcategory: $SUBCATEGORIA"
fi
echo "---"
echo
echo "Escribe tu contenido aquí..."
} > "$RUTA"

echo "✅ Post creado: $RUTA"


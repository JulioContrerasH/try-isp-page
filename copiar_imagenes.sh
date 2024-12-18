#!/bin/bash

# Ruta a las carpetas
SOURCE_DIR="static/images/people"
DEST_DIR="static/images/seminars"

# Eliminar duplicados
for IMAGEN in "$DEST_DIR"/*; do
    IMAGEN_NAME=$(basename "$IMAGEN") # Obtener solo el nombre del archivo
    SOURCE_PATH="$SOURCE_DIR/$IMAGEN_NAME"

    if [ -f "$SOURCE_PATH" ]; then
        rm "$IMAGEN"
        echo "Eliminado duplicado: $IMAGEN_NAME de $DEST_DIR"
    fi
done

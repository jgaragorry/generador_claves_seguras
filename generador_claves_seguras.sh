#!/bin/bash

# Generador de Claves AES
# Autor: Jose Garagorry

echo "Generador de Claves Complejas"
echo "Seleccione una longitud de clave AES:"
echo "1. 64 bits"
echo "2. 128 bits"
echo "3. 256 bits"
echo "4. 512 bits"

read -p "Opción: " option

case $option in
    1)
        openssl rand -base64 8 > aes_key_64.txt
        echo "Clave AES de 64 bits generada con éxito:"
        cat aes_key_64.txt
        ;;
    2)
        openssl rand -base64 16 > aes_key_128.txt
        echo "Clave AES de 128 bits generada con éxito:"
        cat aes_key_128.txt
        ;;
    3)
        openssl rand -base64 32 > aes_key_256.txt
        echo "Clave AES de 256 bits generada con éxito:"
        cat aes_key_256.txt
        ;;
    4)
        openssl rand -base64 64 > aes_key_512.txt
        echo "Clave AES de 512 bits generada con éxito:"
        cat aes_key_512.txt
        ;;
    *)
        echo "Opción no válida."
        ;;
esac

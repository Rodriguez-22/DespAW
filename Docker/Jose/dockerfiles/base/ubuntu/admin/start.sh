#!/bin/Bash

newUser() {
    useradd -rm -d /home/jose -s /bin/bash jose
    echo "jose:password" | chpasswd
    echo "Bienvenido Jose ... " > /home/jose/bienvenida.txt
}

main() {
    newUser
    tail -f /dev/null
}

main
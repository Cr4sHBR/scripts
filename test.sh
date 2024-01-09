#!/bin/bash

# Obtém o endereço IP da interface eth0
ip_address=$(ifconfig eth0 | awk '/inet / {print $2}')

# Verifica se o endereço IP foi encontrado
if [ -z "$ip_address" ]; then
    echo "Não foi possível obter o endereço IP da interface eth0."
else
    echo "Endereço IP da interface eth0: $ip_address"
fi

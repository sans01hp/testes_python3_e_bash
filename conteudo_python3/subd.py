#!/user/bin/env python3

import requests
import colorama
import os
import sys

dominio = input("digite o dominio:")


dominio = input("Digite o domínio: ")
lista = ["admin", "css", "login", "mail", "painel"]

for i in lista:
    url = f"https://{i}.{dominio}"

    try:
        r = requests.get(url, timeout=5)
        print(f"O subdomínio {url} existe")
        print("##########################")
    except requests.RequestException:
        print(f"O subdomínio {url} não respondeu ou não existe")



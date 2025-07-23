#!/usr/bin/env python3

locais = [{'tipo': "Apartamento", 'rua': "Catarolas", 'numero' :"345"},
{'tipo': "residencia", 'rua': "miramar", 'numero': "67"}]

print(locais)

print("mostrando rua de casa numero", locais[1]["numero"],":", locais[1]["rua"])

for loca in locais:
    print(locais.keys())

for local in locais:
    print(locais.values())


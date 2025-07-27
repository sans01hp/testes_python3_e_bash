#!/bin/bash

# ==============================================
# Script explicativo: Comparações com [ ] e [[ ]]
# ==============================================

printf "\033[1;36m=== Comparações em Bash com [ ] e [[ ]] ===\033[0m\n\n"

# ------------------------------
# 1. Comparações de STRINGS
# ------------------------------

texto="hello"

# Usando [ ]
if [ "$texto" = "hello" ]; then
    echo "[ ] - A string é igual a 'hello'"
fi

# Usando [[ ]]
if [[ "$texto" == "hello" ]]; then
    echo "[[ ]] - A string é igual a 'hello'"
fi

# Diferença: [[ ]] permite uso de curingas sem aspas
if [[ $texto == h* ]]; then
    echo "[[ ]] - A string começa com 'h'"
fi

# Verifica se string está vazia
vazio=""
if [ -z "$vazio" ]; then
    echo "[ ] - A string está vazia"
fi

# Verifica se string não está vazia
if [ -n "$texto" ]; then
    echo "[ ] - A string NÃO está vazia"
fi

echo

# ------------------------------
# 2. Comparações de NÚMEROS
# ------------------------------

num=10

if [ "$num" -eq 10 ]; then
    echo "[ ] - O número é igual a 10"
fi

if [ "$num" -gt 5 ]; then
    echo "[ ] - O número é maior que 5"
fi

if [ "$num" -lt 20 ]; then
    echo "[ ] - O número é menor que 20"
fi

# ⚠️ [ ] só usa operadores numéricos específicos: -eq, -ne, -lt, -le, -gt, -ge
# [[ ]] permite algumas comparações com (()) ou regex

# Usando (( )) com números (alternativa moderna)
if (( num > 5 )); then
    echo "(( )) - O número é maior que 5"
fi

echo

# ------------------------------
# 3. Comparações de ARQUIVOS
# ------------------------------

arquivo="comparacoes.sh"

if [ -f "$arquivo" ]; then
    echo "[ ] - '$arquivo' é um arquivo regular"
fi

if [ -r "$arquivo" ]; then
    echo "[ ] - '$arquivo' tem permissão de leitura"
fi

if [ -s "$arquivo" ]; then
    echo "[ ] - '$arquivo' não está vazio"
fi

# Outros testes úteis:
# -d = é diretório
# -x = é executável
# -w = tem permissão de escrita
# -e = existe (arquivo ou diretório)

echo

# ------------------------------
# 4. Comparações COMPOSTAS
# ------------------------------

a=5
b=10

# [ ] requer uso de operadores -a (AND), -o (OR)
if [ "$a" -lt "$b" -a "$b" -gt 8 ]; then
    echo "[ ] - Ambas as condições são verdadeiras"
fi

# [[ ]] permite uso de && e || como no C
if [[ "$a" -lt "$b" && "$b" -gt 8 ]]; then
    echo "[[ ]] - Ambas as condições são verdadeiras"
fi

echo

# ------------------------------
# 5. Regex com [[ ]]
# ------------------------------

entrada="abc123"

if [[ "$entrada" =~ ^[a-z]+[0-9]+$ ]]; then
    echo "[[ ]] - Regex validou a string como letras seguidas de números"
fi

echo
printf "\033[1;32mScript finalizado!\033[0m\n"

#!/bin/bash

# =========================================================
# Comparações no Bash: numéricas, strings e arquivos
# =========================================================

# ---------- Variáveis de exemplo ----------
a=5
b=10
texto1="hello"
texto2="world"
numero_str="123"

# =========================================================
# Comparações Numéricas com [ ]
# =========================================================
echo "[ Comparações numéricas com [ ] ]"

if [ "$a" -lt "$b" ]; then
    echo "$a é menor que $b"
fi

if [ "$a" -ne "$b" ]; then
    echo "$a é diferente de $b"
fi

if [ "$b" -ge "$a" ]; then
    echo "$b é maior ou igual a $a"
fi

# =========================================================
# Comparações Numéricas com (( ))
# =========================================================
echo -e "\n[ Comparações com (( )) — Mais flexível para números ]"

if (( a < b )); then
    echo "$a é menor que $b (com (( )) )"
fi

if (( a + 2 == 7 )); then
    echo "a + 2 é igual a 7"
fi

# =========================================================
# Comparações de Strings com [ ]
# =========================================================
echo -e "\n[ Comparações de strings com [ ] ]"

if [ "$texto1" = "$texto1" ]; then
    echo "As strings são iguais"
fi

if [ "$texto1" != "$texto2" ]; then
    echo "As strings são diferentes"
fi

if [ -z "$texto1" ]; then
    echo "String vazia"
else
    echo "String NÃO está vazia"
fi

# =========================================================
# Comparações de Strings com [[ ]]
# =========================================================
echo -e "\n[ Comparações de strings com [[ ]] — Mais seguro e suporta regex ]"

if [[ "$texto1" == h* ]]; then
    echo "Começa com h (usando wildcard)"
fi

if [[ "$numero_str" =~ ^[0-9]+$ ]]; then
    echo "A string '$numero_str' contém apenas números (regex)"
fi

# =========================================================
# Comparações de Arquivos (extra)
# =========================================================
echo -e "\n[ Verificações de arquivos (bônus) ]"

ARQUIVO="meu_script.sh"

if [ -e "$ARQUIVO" ]; then
    echo "Arquivo $ARQUIVO existe"
else
    echo "Arquivo $ARQUIVO não existe"
fi

# =========================================================
# Referência rápida de operadores numéricos com [ ]
# =========================================================
: '
  -eq  igual
  -ne  diferente
  -lt  menor que
  -le  menor ou igual
  -gt  maior que
  -ge  maior ou igual
'

# =========================================================
# Referência rápida de operadores com [[ ]]
# =========================================================
: '
  ==   igual
  !=   diferente
  =~   regex (expressão regular)
  -z   string vazia
  -n   string não vazia
'

# =========================================================
# Fim
# =========================================================

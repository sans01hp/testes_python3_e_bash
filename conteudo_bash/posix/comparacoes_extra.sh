#!/bin/bash

# =======================
# COMPARAÇÃO DE STRINGS
# =======================

str1="hello"
str2="world"

# Com [ ] (mais portátil, POSIX)
if [ "$str1" = "hello" ]; then
  echo "[ ]: str1 é igual a 'hello'"
fi

# Com [[ ]] (mais poderoso no Bash)
if [[ "$str2" == "world" ]]; then
  echo "[[ ]]: str2 é igual a 'world'"
fi

# Usando curingas (só funciona com [[ ]])
if [[ "$str1" == h* ]]; then
  echo "[[ ]]: str1 começa com 'h'"
fi

# ============================
# COMPARAÇÃO NUMÉRICA
# ============================

x=10
y=5

# Com [ ] e operadores numéricos (não use == aqui!)
if [ "$x" -gt "$y" ]; then
  echo "[ ]: x é maior que y"
fi

# Com (( )) → tudo tratado como número
if (( x > y )); then
  echo "(( )): x é maior que y"
fi

if (( x == 10 )); then
  echo "(( )): x é igual a 10"
fi

# ============================
# EXPRESSÕES BOOLEANAS
# ============================

# [[ ]] permite usar AND (&&) e OR (||)
if [[ "$str1" == "hello" && "$x" -eq 10 ]]; then
  echo "[[ ]]: String e número verificados com sucesso"
fi

# (( )) também permite lógica booleana para números
if (( x > 0 && y < 10 )); then
  echo "(( )): Ambas condições numéricas verdadeiras"
fi

# ============================
# CHECANDO STRINGS VAZIAS
# ============================

empty_var=""

if [ -z "$empty_var" ]; then
  echo "[ ]: A variável está vazia"
fi

if [[ -z "$empty_var" ]]; then
  echo "[[ ]]: A variável está vazia (com [[ ]])"
fi

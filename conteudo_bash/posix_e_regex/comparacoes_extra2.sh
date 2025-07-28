#!/bin/bash

#===================================================
# Variáveis de teste
#===================================================
a=10
b=5
str="texto"

#===================================================
# 1. (( )) - Expressões Aritméticas
#===================================================
echo "== (( )) Comparações Numéricas =="

(( a > b )) && echo "a é maior que b"
(( a == 10 )) && echo "a é igual a 10"
(( b != 0 )) && echo "b é diferente de zero"

# Atribuições também:
(( b = b + 2 ))  # b agora é 7
echo "Novo valor de b: $b"

# Pode omitir o $ dentro de (( ))
((a+=1))         # Incrementa a em 1
echo "a incrementado: $a"

echo ""

#===================================================
# 2. let - Expressão Aritmética (forma alternativa)
#===================================================
echo "== let =="

let c=3+4
echo "Valor de c: $c"

let "d = c * 2"
echo "Valor de d: $d"

echo ""

#===================================================
# 3. expr - Mais antigo, menos usado (requer espaços!)
#===================================================
echo "== expr =="

e=$(expr 5 + 2)
echo "5 + 2 = $e"

f=$(expr $a \* 2)  # Multiplicação precisa de \*
echo "$a x 2 = $f"

echo ""

#===================================================
# 4. [ ] - Teste POSIX (só suporta strings e números inteiros)
#===================================================
echo "== [ ] =="

if [ $a -gt $b ]; then
    echo "a é maior que b (com [ ])"
fi

if [ "$str" = "texto" ]; then
    echo "A string é igual a 'texto'"
fi

if [ -z "$str" ]; then
    echo "A string está vazia"
else
    echo "A string NÃO está vazia"
fi

echo ""

#===================================================
# 5. [[ ]] - Teste avançado (suporta regex e mais seguro com strings)
#===================================================
echo "== [[ ]] =="

if [[ $a -le 20 ]]; then
    echo "a é menor ou igual a 20"
fi

if [[ "$str" == "texto" ]]; then
    echo "String combinou com 'texto'"
fi

if [[ "$str" =~ ^te ]]; then
    echo "String começa com 'te'"
fi

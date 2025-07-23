#!/bin/bash

# Script para automatizar git add, commit e push

# 1) Verifica se está dentro de um repositório git
if ! git rev-parse --is-inside-work-tree > /dev/null 2>&1; then
  echo "❌ Você não está dentro de um repositório git."
  exit 1
fi

# 2) Mostra o status atual para o usuário
echo "🟢 Status atual do repositório:"
git status

# 3) Pergunta a mensagem do commit
read -rp "✏️  Digite a mensagem do commit: " mensagem

# 4) Adiciona todas as alterações (novos arquivos, modificações, deleções)
git add .

# 5) Cria o commit com a mensagem dada
git commit -m "$mensagem"

# 6) Envia as mudanças para o branch remoto (padrão main)
echo "🚀 Fazendo push para o branch 'main' no repositório remoto..."
git push origin main

# 7) Finaliza avisando que terminou
echo "✅ Push concluído!"

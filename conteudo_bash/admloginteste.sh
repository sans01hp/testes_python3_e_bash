#!/bin/bash

BLACK="\033[0;30m"
RED="\033[0;31m"
GREEN="\033[0;32m"
YELLOW="\033[0;33m"
BLUE="\033[0;34m"
MAGENTA="\033[0;35m"
CYAN="\033[0;36m"
WHITE="\033[0;37m"
RESET="\033[0m"


adm="admin"
admemail="adm@hotmail.com"
senhaadm="adm123"
login() {

printf "{CYAN}Digite seu usuario{RESET}:\n"
read str{user}

printf "{CYAN}Digite seu email{RESET}\n:"
read email

printf "{CYAN}Digite sua senha{RESET}:\n"
read -s senha7

while [[ -z "$email" ]] || [[ ! "$email" =~ ^[a-zA-Z0-9]@[a-zA-Z0-9].com$ ]];do
  printf "{RED}Email vazio ou invalido.{GREEN}Digite nocamente{RESET}:\n"
  read email
done

if [[ "$email" -eq "$admemail" ]]
   printf "{RED}email do adm{RESET}\n"
   else
      printf "{YELLOW}Email diferente do adm{RESET}\n"
fi

}

login


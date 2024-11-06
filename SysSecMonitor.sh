#!/bin/bash

# ==============================
#     Projet: SysSecMonitor
#       Créé par Ange Tia
# ==============================

# SysSecMonitor - Outil de surveillance du système et de la sécurité réseau.
# Ce programme fournit des informations clés sur le système, la sécurité et l'activité réseau.
# Inclut la vérification des utilisateurs connectés, le statut du pare-feu UFW, et les ports réseau actifs.

# Couleurs pour la sortie
RED='\033[0;31m'
GREEN='\033[0;32m'
NC='\033[0m' # Pas de couleur

# Vérification des droits root
if [ "$EUID" -ne 0 ]; then
    echo -e "${RED}Veuillez exécuter ce script avec des droits root.${NC}"
    exit 1
fi

# Informations système
echo -e "${GREEN}==> Informations Système${NC}"
echo "Hostname : $(hostname)"
echo "Version Linux : $(uname -r)"
echo "Uptime : $(uptime -p)"
echo "Heure actuelle : $(date)"
echo "- - - - - - - - - - - - - - - -"

# Informations des utilisateurs connectés
echo -e "${GREEN}==> Utilisateurs Connectés${NC}"
who
echo "- - - - - - - - - - - - - - - -"

# Vérification du statut du pare-feu
echo -e "${GREEN}==> Statut du Pare-feu${NC}"
ufw status verbose
echo "- - - - - - - - - - - - - - - -"

# Activité réseau : Liste des ports en écoute
echo -e "${GREEN}==> Activité Réseau${NC}"
netstat -tuln | grep LISTEN
echo "- - - - - - - - - - - - - - - -"
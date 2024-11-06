!/bin/bash

# ==============================
#     Projet: SecureNetGuard
#       Créé par Ange Tia
# ==============================

# SecureNetGuard - Programme de gestion et d'activation intelligente du pare-feu UFW.
# Ce script vérifie le statut actuel du pare-feu UFW et applique des règles de sécurité réseau essentielles.
# Utilise des règles par défaut pour bloquer le trafic entrant et sortant, tout en autorisant les connexions nécessaires pour HTTP, HTTPS, et DNS.

# Vérification des droits root
if [ "$EUID" -ne 0 ]; then
    echo "Veuillez exécuter ce script avec des droits root."
    exit 1
fi

# Vérification du statut du pare-feu
ufw_status=$(ufw status | grep -o "Status: active")

if [ "$ufw_status" == "Status: active" ]; then
    echo "Le pare-feu UFW est déjà activé. Aucune modification n'a été apportée."
else
    echo "Le pare-feu UFW est désactivé. Application des nouvelles règles..."

    # Bloquer tout le trafic sortant et entrant par défaut
    ufw default deny outgoing
    ufw default deny incoming

    # Autoriser les ports pour la navigation et DNS
    ufw allow out 80/tcp comment "HTTP Traffic"
    ufw allow out 443/tcp comment "HTTPS Traffic"
    ufw allow out 53 comment "DNS Traffic"

    # Activer le pare-feu avec confirmation
    echo "Activation du pare-feu UFW avec les règles définies..."
    ufw enable
fi

# Afficher l'état du pare-feu
ufw status verbose
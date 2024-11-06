# System-Security

**System Security** contient deux outils de sécurité réseau et système conçus pour renforcer la gestion du pare-feu UFW et surveiller l'état général de votre machine.

## SecureNetGuard et SysSecMonitor

### Description

**SecureNetGuard.sh** est un script destiné à gérer et sécuriser le pare-feu UFW (Uncomplicated Firewall). Il vérifie le statut actuel du pare-feu et applique des règles de sécurité, telles que l'interdiction du trafic entrant et sortant par défaut et l'autorisation des connexions HTTP, HTTPS et DNS.

**SysSecMonitor.sh** est un outil de surveillance pour obtenir des informations détaillées sur votre système. Il affiche l'état du système, les utilisateurs connectés, l'état du pare-feu, ainsi que les ports réseau actifs, permettant une gestion proactive de la sécurité réseau.

## Fonctionnalités

### SecureNetGuard.sh :
- Vérification des droits d'exécution en tant que root.
- Vérification du statut du pare-feu UFW.
- Application de règles de sécurité strictes si le pare-feu est désactivé.
- Activation du pare-feu avec des règles par défaut.
- Affichage du statut détaillé du pare-feu.

### SysSecMonitor.sh :
- Vérification des droits d'exécution en tant que root.
- Affichage des informations système : hostname, version Linux, uptime, heure actuelle.
- Liste des utilisateurs actuellement connectés.
- Vérification du statut du pare-feu UFW.
- Affichage de l'activité réseau : ports en écoute et services actifs.

## Prérequis

- **UFW** (Uncomplicated Firewall) doit être installé pour que **SecureNetGuard.sh** fonctionne correctement.
- Les scripts doivent être exécutés avec des privilèges root pour modifier le pare-feu et obtenir des informations système.

## Installation

1. Clonez ce dépôt sur votre machine locale :
   ```
   git clone https://github.com/AngeTia/SecureTools.git
2. Rendez les scripts exécutables :
   ```
   chmod +x SecureNetGuard.sh
   chmod +x SysSecMonitor.sh
3. Exécutez les scripts avec des privilèges root :
    ```
   sudo ./SecureNetGuard.sh
   sudo ./SysSecMonitor.sh

## Utilisation

**SecureNetGuard.sh** : Lancez ce script pour gérer le pare-feu et sécuriser votre réseau. Si le pare-feu est désactivé, il appliquera des règles de sécurité strictes et activera UFW.

**SysSecMonitor.sh** : Utilisez ce script pour obtenir une vue d'ensemble de l'état de votre système et de votre réseau. Il affiche des informations système, l'état du pare-feu et l'activité réseau en temps réel.

## Contribution
Les contributions sont les bienvenues ! Si vous souhaitez améliorer ces outils ou ajouter de nouvelles fonctionnalités, veuillez soumettre une pull request.

## License
Ce projet est sous licence MIT.

#!/bin/bash

# Démarrage du service SSH
service ssh start

# Démarrage du service Apache2
service apache2 start

# Démarrage du service fail2ban
service fail2ban start

#Rendre les pages accessible via le browser du localhost
chmod -R 755 /var/www/html

# Démarrage de rsyslogd en arrière-plan
rsyslogd &

# Garde le script en cours d'exécution
tail -f /dev/null

#!/bin/bash

ufw allow 514

# Démarrage de rsyslogd en arrière-plan
rsyslogd &

# Garde le script en cours d'exécution
tail -f /dev/null

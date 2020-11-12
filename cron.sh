#!/bin/bash

if [ "$users" = "" ]
then
users > tymczas2.txt
email="adres emial"
echo "Zalogowani uzytkownicy: $(cat tymczas2.txt)" | mutt -s "Zalogowani uzytkownicy" $email
rm tymczas2.txt
else
email="adres email"
echo "Brak zalogowanych użytkowników" $email
fi

# crontab:
# */0 12 * * * /home/imirgrp/kwojcik/Laboratoria-informatyka/cron.sh 





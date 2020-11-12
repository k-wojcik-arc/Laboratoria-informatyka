#!/bin/bash

if [ "$users" = "" ]
then
users > tymczas2.txt
email="balayoextreme7@gmail.com"
echo "Zalogowani uzytkownicy: $(cat tymczas2.txt)" | mutt -s "Zalogowani uzytkownicy" $email
rm tymczas2.txt
else
email="balayoextreme7@gmail.com"
echo "Brak zalogowanych użytkowników" $email
fi





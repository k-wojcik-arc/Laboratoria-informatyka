#!/bin/bash
dalej="t"
while [ "$dalej" = "t" ]
do

clear

echo "Podaj nazwe uzytkownika"
read uzytkownik

if [ "$(users | grep "$uzytkownik")" != "" ]
then

echo "wprowadz adres na ktory wyslac wiadomosc"
read adres
email="$adres"
echo "$uzytkownik jest zalogowany" | mutt -s "uzytkownik $uzytkownik jest zalogowany" $email 

echo "wiadomosc zostala wyslana"

else

echo "wprowadz adres na ktory wyslac wiadomosc"
read adres
email="$adres"
echo "$uzytkownik nie jest zalogowany" | mutt -s "uzytkownik $uzytkownik nie jest zalogowany" $email 

echo "wiadomosc zostala wyslana"

fi
echo "kontynuowac?"
read dalej
done

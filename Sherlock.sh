#!/bin/bash

if [ "$1" == "" -o "$2" == "" ]
then
    echo "Modo de uso:"
    echo "$0 [dominio.com] [extensão do arquivo]"
    echo
    echo "Exemplo: $0 businesscorp.com.br pdf"
else
    mkdir Sherlock && cd Sherlock 
    lynx -dump https://google.com/search?q=site:$1+ext:$2 | grep "$2" | cut -d "=" -f 2 | egrep -v "site|google" | sed "s/...$//" | grep "http" >> urls.txt
fi

for i in $(cat urls.txt)
do 
    wget -q $i
done

for c in $(ls *.$2)
do
    echo "===== $c"
    exiftool $c
    echo
done

rm -r *.$2
rm -r urls.txt

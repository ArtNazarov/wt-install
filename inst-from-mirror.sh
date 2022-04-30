# Runtime Pack Lite
cd ~

declare -a libs=()
declare -a zips=()
# load list
# load from server zfile : exe
wget -O list-libs.txt http://mirror.artnazarov.ru/list-zips.php
cat list-libs.txt
readarray -t db < list-libs.txt
index=0
for str in "${db[@]}"
do
   echo "Очередная строка $str"
   data=(${str//;/ })
   zf=${data[0]}
   exe=${data[1]} 
   echo "Архив - $zf"
   echo "Установщик - $exe"     
   zips+=($zf);
   libs+=($exe);
done

for index in {0..3}; do
echo "Шаг $index"
lib="${libs[$index]}"
zfile="${zips[$index]}"

echo "имя библиотеки - $lib"
echo "имя архива - $zfile"

if [ ! -f "$lib" ]
then
   echo "$lib not exists. Wait while downloading"
   echo "http://mirror.artnazarov.ru/$zfile"
   wget "http://mirror.artnazarov.ru/$zfile"
   unzip $zfile
   rm $zfile -f
else
   echo "Installing"
fi

wine $lib 
rm $lib -f
  
done

# Runtime Pack Lite
cd ~

declare -a libs=("RuntimePack_Lite-20.3.3.exe" "VCRHyb64.exe" "NET.Framework-4.8.exe" "K-Lite_Mega_Codec_Pack-15.8.5.exe")
declare -a zips=("runtimepack.zip" "VCRHyb64.zip" "net48.zip" "codecs.zip")

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

# Runtime Pack Lite
cd ~
DFILE=runtimepack.exe
if [ ! -f "~/$DFILE" ]; then
    echo "$DFILE exists. Skip downloading"
else
echo "Installing"
wget http://mirror.artnazarov.ru/runtimepack.zip
unzip runtimepack.zip
fi

rm runtimepack.zip -f
wine RuntimePack_Lite-20.3.3.exe
rm RuntimePack_Lite-20.3.3.exe -f
export DFILE=VCRHyb64.exe
if [ ! -f "~/$DFILE" ]; then
    echo "$DFILE exists. Skip downloading"
else
echo "Installing"
# VC full 2005-2019              
wget http://mirror.artnazarov.ru/VCRHyb64.zip
unzip VCRHyb64.exe
rm VCRHyb64.zip -f
fi
wine VCRHyb64.exe
rm VCRHyb64.exe -f
# NET 4.8  
export DFILE=VCRHyb64.exe
if [ ! -f "~/$DFILE" ]; then
    echo "$DFILE exists. Skip downloading"
else
echo "Installing..."
wget http://mirror.artnazarov.ru/net48.zip
unzip net48.zip 
rm net48.zip -f
fi
wine NET.Framework-4.8.exe
rm NET.Framework-4.8.exe -f

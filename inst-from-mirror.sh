# Runtime Pack Lite
cd ~
export DFILE=runtimepack.exe
if [ ! -f "~/$DFILE" ]; then
    echo "$DFILE not exists. Skip downloading"
    wget http://mirror.artnazarov.ru/runtimepack.zip
    unzip runtimepack.zip
    rm runtimepack.zip -f
else
echo "Installing"
wine RuntimePack_Lite-20.3.3.exe
rm RuntimePack_Lite-20.3.3.exe -f
fi



export DFILE=VCRHyb64.exe
if [ ! -f "~/$DFILE" ]; then
    echo "$DFILE exists. Skip downloading"
    wget http://mirror.artnazarov.ru/VCRHyb64.zip
    unzip VCRHyb64.exe
    rm VCRHyb64.zip -f
else
echo "Installing"
wine VCRHyb64.exe
rm VCRHyb64.exe -f          
fi

# NET 4.8  
export DFILE=VCRHyb64.exe
if [ ! -f "~/$DFILE" ]; then
    echo "$DFILE exists. Skip downloading"
    wget http://mirror.artnazarov.ru/net48.zip
    unzip net48.zip 
    rm net48.zip -f
else
echo "Installing..."
wine NET.Framework-4.8.exe
rm NET.Framework-4.8.exe -f
fi

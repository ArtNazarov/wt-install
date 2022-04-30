# Runtime Pack Lite
cd ~
export DFILE=runtimepack.exe
if [ ! -f "~/$DFILE" ]; then
    echo "$DFILE not exists. Wait while downloading"
    wget http://mirror.artnazarov.ru/runtimepack.zip
    unzip runtimepack.zip
    rm runtimepack.zip -f
else
echo "Installing"
fi

wine RuntimePack_Lite-20.3.3.exe
rm RuntimePack_Lite-20.3.3.exe -f

export DFILE=VCRHyb64.exe
if [ ! -f "~/$DFILE" ]; then
    echo "$DFILE exists. Wait while downloading"
    wget http://mirror.artnazarov.ru/VCRHyb64.zip
    unzip VCRHyb64.exe
    rm VCRHyb64.zip -f
else
echo "Installing"          
fi
wine VCRHyb64.exe
rm VCRHyb64.exe -f

# NET 4.8  
export DFILE=VCRHyb64.exe
if [ ! -f "~/$DFILE" ]; then
    echo "$DFILE exists. Wait while downloading"
    wget http://mirror.artnazarov.ru/net48.zip
    unzip net48.zip 
    rm net48.zip -f
else
echo "Installing..."
fi
wine NET.Framework-4.8.exe
rm NET.Framework-4.8.exe -f

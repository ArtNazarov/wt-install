echo "wt-install-64.sh - (с) nazarow.ru, 2022"
echo "e-mail: artem@nazarow.ru"

nv WINEDEBUG=-all arch=64 WINEPREFIX=~/.wine64 winecfg


echo "1 Install codecs"

env WINEDEBUG=-all arch=64 WINEPREFIX=~/.wine64 winetricks ffdshow
env WINEDEBUG=-all arch=64 WINEPREFIX=~/.wine64 winetricks l3codecx
env WINEDEBUG=-all arch=64 WINEPREFIX=~/.wine64 winetricks xvid
env WINEDEBUG=-all arch=64 WINEPREFIX=~/.wine64 winetricks dirac

echo "2 Install fonts"

env WINEDEBUG=-all arch=64 WINEPREFIX=~/.wine64 winetricks corefonts
env WINEDEBUG=-all arch=64 WINEPREFIX=~/.wine64 winetricks allfonts
env WINEDEBUG=-all arch=64 WINEPREFIX=~/.wine64 winetricks fontfix


echo "3 Install dot net"

env WINEDEBUG=-all arch=64 WINEPREFIX=~/.wine64 winetricks dotnet20
env WINEDEBUG=-all arch=64 WINEPREFIX=~/.wine64 winetricks dotnet30
env WINEDEBUG=-all arch=64 WINEPREFIX=~/.wine64 winetricks dotnet35
env WINEDEBUG=-all arch=64 WINEPREFIX=~/.wine64 winetricks dotnet40

echo "4 Install VC Run"

env WINEDEBUG=-all arch=64 WINEPREFIX=~/.wine64 winetricks vcrun2003
env WINEDEBUG=-all arch=64 WINEPREFIX=~/.wine64 winetricks vcrun2005
env WINEDEBUG=-all arch=64 WINEPREFIX=~/.wine64 winetricks vcrun2008
env WINEDEBUG=-all arch=64 WINEPREFIX=~/.wine64 winetricks vcrun2010
env WINEDEBUG=-all arch=64 WINEPREFIX=~/.wine64 winetricks vcrun6

echo "5 Install VB"

env WINEDEBUG=-all arch=64 WINEPREFIX=~/.wine64 winetricks vb5run
env WINEDEBUG=-all arch=64 WINEPREFIX=~/.wine64 winetricks vb6run

echo "6 Install MFC"

env WINEDEBUG=-all arch=64 WINEPREFIX=~/.wine64 winetricks mfc40
env WINEDEBUG=-all arch=64 WINEPREFIX=~/.wine64 winetricks mfc42

echo "7 Install WSh"

env WINEDEBUG=-all arch=64 WINEPREFIX=~/.wine64 winetricks wsh56vb
env WINEDEBUG=-all arch=64 WINEPREFIX=~/.wine64 winetricks wsh57
env WINEDEBUG=-all arch=64 WINEPREFIX=~/.wine64 winetricks wsh56js

echo "8 Install DirectX"

env WINEDEBUG=-all arch=64 WINEPREFIX=~/.wine64 winetricks d3dx9
env WINEDEBUG=-all arch=64 WINEPREFIX=~/.wine64 winetricks d3dx10
env WINEDEBUG=-all arch=64 WINEPREFIX=~/.wine64 winetricks d3dx11_42
env WINEDEBUG=-all arch=64 WINEPREFIX=~/.wine64 winetricks d3dx11_43
env WINEDEBUG=-all arch=64 WINEPREFIX=~/.wine64 winetricks  d3dxof

echo "9 Install Direct*"

env WINEDEBUG=-all arch=64 WINEPREFIX=~/.wine64 winetricks directmusic
env WINEDEBUG=-all arch=64 WINEPREFIX=~/.wine64 winetricks directplay
env WINEDEBUG=-all arch=64 WINEPREFIX=~/.wine64 winetricks devenum
env WINEDEBUG=-all arch=64 WINEPREFIX=~/.wine64 winetricks dinput8
env WINEDEBUG=-all arch=64 WINEPREFIX=~/.wine64 winetricks dxdiag
env WINEDEBUG=-all arch=64 WINEPREFIX=~/.wine64 winetricks dxdiagn

echo "10 Install XAct"

env WINEDEBUG=-all arch=64 WINEPREFIX=~/.wine64 winetricks xact
env WINEDEBUG=-all arch=64 WINEPREFIX=~/.wine64 winetricks xact_jun2010

echo "11 Install WMP"

env WINEDEBUG=-all arch=64 WINEPREFIX=~/.wine64 winetricks wmp9
env WINEDEBUG=-all arch=64 WINEPREFIX=~/.wine64 winetricks wmp10


echo "12 Install misc."


env WINEDEBUG=-all arch=64 WINEPREFIX=~/.wine64 winetricks winhttp
env WINEDEBUG=-all arch=64 WINEPREFIX=~/.wine64 winetricks wininet
env WINEDEBUG=-all arch=64 WINEPREFIX=~/.wine64 winetricks xinput
env WINEDEBUG=-all arch=64 WINEPREFIX=~/.wine64 winetricks adobeair
env WINEDEBUG=-all arch=64 WINEPREFIX=~/.wine64 winetricks flash
env WINEDEBUG=-all arch=64 WINEPREFIX=~/.wine64 winetricks dmsynth
env WINEDEBUG=-all arch=64 WINEPREFIX=~/.wine64 winetricks msasn1
env WINEDEBUG=-all arch=64 WINEPREFIX=~/.wine64 winetricks msxml6
env WINEDEBUG=-all arch=64 WINEPREFIX=~/.wine64 winetricks gdiplus
env WINEDEBUG=-all arch=64 WINEPREFIX=~/.wine64 winetricks quartz

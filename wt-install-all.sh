echo "wt-install-all.sh - (с) nazarow.ru, 2022"
echo "e-mail: artem@nazarow.ru"

env WINEDEBUG=-all  WINEARCH=win32  WINEPREFIX=~/.wine winecfg

inst_codecs(){

echo "1 Install codecs"

env WINEDEBUG=-all WINEARCH=win32 WINEPREFIX=~/.wine winetricks ffdshow
env WINEDEBUG=-all WINEARCH=win32 WINEPREFIX=~/.wine winetricks l3codecx
env WINEDEBUG=-all WINEARCH=win32 WINEPREFIX=~/.wine winetricks xvid
env WINEDEBUG=-all WINEARCH=win32 WINEPREFIX=~/.wine winetricks dirac
}

inst_fonts(){

echo "2 Install fonts"

env WINEDEBUG=-all WINEARCH=win32 WINEPREFIX=~/.wine winetricks corefonts
env WINEDEBUG=-all WINEARCH=win32 WINEPREFIX=~/.wine winetricks allfonts
env WINEDEBUG=-all WINEARCH=win32 WINEPREFIX=~/.wine winetricks fontfix
}

 inst_dot(){

echo "3 Install dot net"

env WINEDEBUG=-all WINEARCH=win32 WINEPREFIX=~/.wine winetricks dotnet20
env WINEDEBUG=-all WINEARCH=win32 WINEPREFIX=~/.wine winetricks dotnet30
env WINEDEBUG=-all WINEARCH=win32 WINEPREFIX=~/.wine winetricks dotnet35
env WINEDEBUG=-all WINEARCH=win32 WINEPREFIX=~/.wine winetricks dotnet40
}
 inst_vc(){
echo "4 Install VC Run"

env WINEDEBUG=-all WINEARCH=win32 WINEPREFIX=~/.wine winetricks vcrun2003
env WINEDEBUG=-all WINEARCH=win32 WINEPREFIX=~/.wine winetricks vcrun2005
env WINEDEBUG=-all WINEARCH=win32 WINEPREFIX=~/.wine winetricks vcrun2008
env WINEDEBUG=-all WINEARCH=win32 WINEPREFIX=~/.wine winetricks vcrun2010
env WINEDEBUG=-all WINEARCH=win32 WINEPREFIX=~/.wine winetricks vcrun6
}

 inst_vb(){
echo "5 Install VB"

env WINEDEBUG=-all WINEARCH=win32 WINEPREFIX=~/.wine winetricks vb5run
env WINEDEBUG=-all WINEARCH=win32 WINEPREFIX=~/.wine winetricks vb6run
}

  inst_mfc(){
echo "6 Install MFC"

env WINEDEBUG=-all WINEARCH=win32 WINEPREFIX=~/.wine winetricks mfc40
env WINEDEBUG=-all WINEARCH=win32 WINEPREFIX=~/.wine winetricks mfc42
}

 inst_wsh(){
echo "7 Install WSh"

env WINEDEBUG=-all WINEARCH=win32 WINEPREFIX=~/.wine winetricks wsh56vb
env WINEDEBUG=-all WINEARCH=win32 WINEPREFIX=~/.wine winetricks wsh57
env WINEDEBUG=-all WINEARCH=win32 WINEPREFIX=~/.wine winetricks wsh56js
}

 inst_dx(){
echo "8 Install DirectX"

env WINEDEBUG=-all WINEARCH=win32 WINEPREFIX=~/.wine winetricks d3dx9
env WINEDEBUG=-all WINEARCH=win32 WINEPREFIX=~/.wine winetricks d3dx10
env WINEDEBUG=-all WINEARCH=win32 WINEPREFIX=~/.wine winetricks d3dx11_42
env WINEDEBUG=-all WINEARCH=win32 WINEPREFIX=~/.wine winetricks d3dx11_43
env WINEDEBUG=-all WINEARCH=win32 WINEPREFIX=~/.wine winetricks  d3dxof
}
 inst_dc(){
echo "9 Install Direct*"

env WINEDEBUG=-all WINEARCH=win32 WINEPREFIX=~/.wine winetricks directmusic
env WINEDEBUG=-all WINEARCH=win32 WINEPREFIX=~/.wine winetricks directplay
env WINEDEBUG=-all WINEARCH=win32 WINEPREFIX=~/.wine winetricks devenum
env WINEDEBUG=-all WINEARCH=win32 WINEPREFIX=~/.wine winetricks dinput8
env WINEDEBUG=-all WINEARCH=win32 WINEPREFIX=~/.wine winetricks dxdiag
env WINEDEBUG=-all WINEARCH=win32 WINEPREFIX=~/.wine winetricks dxdiagn
}

 inst_xact(){
echo "10 Install XAct"

env WINEDEBUG=-all WINEARCH=win32 WINEPREFIX=~/.wine winetricks xact
env WINEDEBUG=-all WINEARCH=win32 WINEPREFIX=~/.wine winetricks xact_jun2010
}

 inst_wmp(){
echo "11 Install WMP"

env WINEDEBUG=-all WINEARCH=win32 WINEPREFIX=~/.wine winetricks wmp9
env WINEDEBUG=-all WINEARCH=win32 WINEPREFIX=~/.wine winetricks wmp10
}

 inst_misc(){

echo "12 Install misc."


env WINEDEBUG=-all WINEARCH=win32 WINEPREFIX=~/.wine winetricks winhttp
env WINEDEBUG=-all WINEARCH=win32 WINEPREFIX=~/.wine winetricks wininet
env WINEDEBUG=-all WINEARCH=win32 WINEPREFIX=~/.wine winetricks xinput
env WINEDEBUG=-all WINEARCH=win32 WINEPREFIX=~/.wine winetricks adobeair
env WINEDEBUG=-all WINEARCH=win32 WINEPREFIX=~/.wine winetricks flash
env WINEDEBUG=-all WINEARCH=win32 WINEPREFIX=~/.wine winetricks dmsynth
env WINEDEBUG=-all WINEARCH=win32 WINEPREFIX=~/.wine winetricks msasn1
env WINEDEBUG=-all WINEARCH=win32 WINEPREFIX=~/.wine winetricks msxml6
env WINEDEBUG=-all WINEARCH=win32 WINEPREFIX=~/.wine winetricks gdiplus
env WINEDEBUG=-all WINEARCH=win32 WINEPREFIX=~/.wine winetricks quartz
}

proc_list=("inst_codecs" "inst_fonts" "inst_dot" "inst_vc" "inst_vb" "inst_mfc" "inst_mfc" "inst_wsh" "inst_dx" "inst_dc" "inst_xact" "inst_wmp" "inst_misc")

for proc in ${proc_list[@]}; do
read -p "Install $proc (y/n)? " answer
case ${answer:0:1} in
    y|Y )
        $proc
    ;;
    * )
        echo "Skip";
    ;;
esac
  
done

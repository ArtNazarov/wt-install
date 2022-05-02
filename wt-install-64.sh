echo "wt-install-64.sh - (с) nazarow.ru, 2022"
echo "e-mail: artem@nazarow.ru"

env WINEDEBUG=-all arch=64 WINEPREFIX=~/.wine64 winecfg

inst_codecs(){

echo "1 Install codecs"

env WINEDEBUG=-all arch=64 WINEPREFIX=~/.wine64 winetricks ffdshow
env WINEDEBUG=-all arch=64 WINEPREFIX=~/.wine64 winetricks l3codecx
env WINEDEBUG=-all arch=64 WINEPREFIX=~/.wine64 winetricks xvid
env WINEDEBUG=-all arch=64 WINEPREFIX=~/.wine64 winetricks dirac

}

 inst_fonts(){
echo "2 Install fonts"

env WINEDEBUG=-all arch=64 WINEPREFIX=~/.wine64 winetricks corefonts
env WINEDEBUG=-all arch=64 WINEPREFIX=~/.wine64 winetricks allfonts
env WINEDEBUG=-all arch=64 WINEPREFIX=~/.wine64 winetricks fontfix
}

 inst_dot(){
echo "3 Install dot net"

env WINEDEBUG=-all arch=64 WINEPREFIX=~/.wine64 winetricks dotnet20
env WINEDEBUG=-all arch=64 WINEPREFIX=~/.wine64 winetricks dotnet30
env WINEDEBUG=-all arch=64 WINEPREFIX=~/.wine64 winetricks dotnet35
wineserver -k
wineboot
env WINEDEBUG=-all arch=64 WINEPREFIX=~/.wine64 winetricks dotnet40
}
 inst_vc(){
echo "4 Install VC Run"

env WINEDEBUG=-all arch=64 WINEPREFIX=~/.wine64 winetricks vcrun2003
env WINEDEBUG=-all arch=64 WINEPREFIX=~/.wine64 winetricks vcrun2005
env WINEDEBUG=-all arch=64 WINEPREFIX=~/.wine64 winetricks vcrun2008
env WINEDEBUG=-all arch=64 WINEPREFIX=~/.wine64 winetricks vcrun2010
env WINEDEBUG=-all arch=64 WINEPREFIX=~/.wine64 winetricks vcrun6
}

 inst_vb(){
echo "5 Install VB"

env WINEDEBUG=-all arch=64 WINEPREFIX=~/.wine64 winetricks vb5run
env WINEDEBUG=-all arch=64 WINEPREFIX=~/.wine64 winetricks vb6run
}

  inst_mfc(){
echo "6 Install MFC"

env WINEDEBUG=-all arch=64 WINEPREFIX=~/.wine64 winetricks mfc40
env WINEDEBUG=-all arch=64 WINEPREFIX=~/.wine64 winetricks mfc42
}

 inst_wsh(){
echo "7 Install WSh"

env WINEDEBUG=-all arch=64 WINEPREFIX=~/.wine64 winetricks wsh56vb
env WINEDEBUG=-all arch=64 WINEPREFIX=~/.wine64 winetricks wsh57
env WINEDEBUG=-all arch=64 WINEPREFIX=~/.wine64 winetricks wsh56js
}

 inst_dx(){
echo "8 Install DirectX"

env WINEDEBUG=-all arch=64 WINEPREFIX=~/.wine64 winetricks d3dx9
env WINEDEBUG=-all arch=64 WINEPREFIX=~/.wine64 winetricks d3dx10
env WINEDEBUG=-all arch=64 WINEPREFIX=~/.wine64 winetricks d3dx11_42
env WINEDEBUG=-all arch=64 WINEPREFIX=~/.wine64 winetricks d3dx11_43
env WINEDEBUG=-all arch=64 WINEPREFIX=~/.wine64 winetricks  d3dxof
}
 inst_dc(){
echo "9 Install Direct*"

env WINEDEBUG=-all arch=64 WINEPREFIX=~/.wine64 winetricks directmusic
env WINEDEBUG=-all arch=64 WINEPREFIX=~/.wine64 winetricks directplay
env WINEDEBUG=-all arch=64 WINEPREFIX=~/.wine64 winetricks devenum
env WINEDEBUG=-all arch=64 WINEPREFIX=~/.wine64 winetricks dinput8
env WINEDEBUG=-all arch=64 WINEPREFIX=~/.wine64 winetricks dxdiag
env WINEDEBUG=-all arch=64 WINEPREFIX=~/.wine64 winetricks dxdiagn
}

 inst_xact(){
echo "10 Install XAct"

env WINEDEBUG=-all arch=64 WINEPREFIX=~/.wine64 winetricks xact
env WINEDEBUG=-all arch=64 WINEPREFIX=~/.wine64 winetricks xact_jun2010
}

 inst_wmp(){
echo "11 Install WMP"

env WINEDEBUG=-all arch=64 WINEPREFIX=~/.wine64 winetricks wmp9
env WINEDEBUG=-all arch=64 WINEPREFIX=~/.wine64 winetricks wmp10
}

 inst_misc(){
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

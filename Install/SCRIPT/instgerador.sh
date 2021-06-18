#!/bin/bash
IVAR="/etc/http-instas"
SCPT_DIR="/etc/SCRIPT"
SCPresq="aHR0cHM6Ly9yYXcuZ2l0aHVidXNlcmNvbnRlbnQuY29tL1JhemhpZWwyMDE5L0cxR0VOTUFUL21haW4vZ2VyYWRvcg=="
SUB_DOM='base64 -d'
rm $(pwd)/$0

ofus () {
unset server
server=$(echo ${txt_ofuscatw}|cut -d':' -f1)
unset txtofus
number=$(expr length $1)
for((i=1; i<$number+1; i++)); do
txt[$i]=$(echo "$1" | cut -b $i)
case ${txt[$i]} in
".")txt[$i]="+";;
"+")txt[$i]=".";;
"1")txt[$i]="@";;
"@")txt[$i]="1";;
"2")txt[$i]="?";;
"?")txt[$i]="2";;
"4")txt[$i]="%";;
"%")txt[$i]="4";;
"-")txt[$i]="K";;
"K")txt[$i]="-";;
esac
txtofus+="${txt[$i]}"
done
echo "$txtofus" | rev
}

Present (){
echo "#################################################################"
echo -e "                     \e[93mB I E N V E N I D O !!!\e[0m"
echo "#################################################################"
tput bold
echo "
ESTAS POR INSTALAR EL GENERADOR OFICIAL DE LLAVES PARA LOS SCRIPT
ADM_OS PROJECTS By: Razhiel, HAS BUEN USO DE LAS LLAVES Y DEL
GENERADOR MISMO....."
echo "################################################################"
echo
echo -e "                     \e[3;92m   t.me:@RZHLM    \e[0m"
}

veryfy_fun () {
[[ ! -d ${IVAR} ]] && touch ${IVAR}
[[ ! -d ${SCPT_DIR} ]] && mkdir ${SCPT_DIR}
unset ARQ
case $1 in
"gerar.sh")ARQ="/usr/bin/";;
"http-server.py")ARQ="/bin/";;
*)ARQ="${SCPT_DIR}/";;
esac
mv -f $HOME/$1 ${ARQ}/$1
chmod +x ${ARQ}/$1
}

tput clear
tput cup 20 0
Present
sleep 5
tput clear
tput cup 22 1
echo -e "\033[1;36m----------------------------------------------------------------\033[0m"
tput cup 23 1
tput rev
echo "          GENERADOR DE LLAVES (ADM_O.S SYSTEM) By: RAZHIEL       "
tput sgr0 
tput cup 24 1
echo -e "\033[1;36m----------------------------------------------------------------\033[0m"
sleep 3
meu_ip () {
MIP=$(ip addr | grep 'inet' | grep -v inet6 | grep -vE '127\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}' | grep -o -E '[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}' | head -1)
MIP2=$(wget -qO- ipv4.icanhazip.com)
[[ "$MIP" != "$MIP2" ]] && IP="$MIP2" || IP="$MIP"
echo "$IP" > /usr/bin/vendor_code
}
tput clear
meu_ip
echo -e "\033[1;36m-----------------------------------------------------------------\033[0m"
echo -e "             \033[1;33m>>>   Instalando Archivos Necesarios   <<< "
echo -e "\033[1;36m-----------------------------------------------------------------\033[0m"
cd $HOME
REQUEST=$(echo $SCPresq|$SUB_DOM)
wget -O "$HOME/lista-arq" ${REQUEST}/GERADOR > /dev/null 2>&1
sleep 1s
[[ -e $HOME/lista-arq ]] && {
for arqx in `cat $HOME/lista-arq`; do
echo -ne "\033[1;33mDescargando Archivos... \033[1;31m[$arqx] "
wget -O $HOME/$arqx ${REQUEST}/${arqx} > /dev/null 2>&1 && {
echo -e "\033[1;31m- \033[1;32mDescarga Lista!!"
[[ -e $HOME/$arqx ]] && veryfy_fun $arqx
} || echo -e "\033[1;31m- \033[1;31mERROR! (No Descargado!)"
done
[[ ! -e /usr/bin/trans ]] && wget -O /usr/bin/trans https://raw.githubusercontent.com/Razhiel2019/G1GENMAT/main/Install/trans &> /dev/null
[[ -e /bin/http-server.py ]] && mv -f /bin/http-server.py /bin/http-server.sh && chmod +x /bin/http-server.sh
[[ $(dpkg --get-selections|grep -w "bc"|head -1) ]] || apt-get install bc -y &>/dev/null
[[ $(dpkg --get-selections|grep -w "screen"|head -1) ]] || apt-get install screen -y &>/dev/null
[[ $(dpkg --get-selections|grep -w "nano"|head -1) ]] || apt-get install nano -y &>/dev/null
[[ $(dpkg --get-selections|grep -w "curl"|head -1) ]] || apt-get install curl -y &>/dev/null
[[ $(dpkg --get-selections|grep -w "netcat"|head -1) ]] || apt-get install netcat -y &>/dev/null
[[ $(dpkg --get-selections|grep -w "apache2"|head -1) ]] || apt-get install apache2 -y &>/dev/null
sed -i "s;Listen 80;Listen 81;g" /etc/apache2/ports.conf
service apache2 restart > /dev/null 2>&1 &
IVAR2="/etc/key-gerador"
echo "$Key" > $IVAR
cp $HOME/lista-arq /etc/SCRIPT
cp /bin/http-server.sh /etc/SCRIPT
mv /etc/SCRIPT/http-server.sh /etc/SCRIPT/http-server.py
wget https://raw.githubusercontent.com/Razhiel2019/G1GENMAT/main/gerador/gerar.sh &>/dev/null
mv gerar.sh /etc/SCRIPT
cd /etc/SCRIPT
rm -rf FERRAMENTA KEY KEY! INVALIDA!
rm $HOME/lista-arq
sed -i -e 's/\r$//' /usr/bin/gerar.sh
tput clear
tput cup 20 0
echo -e "\033[1;36m--------------------------------------------------------------------\033[0m"
echo "/usr/bin/gerar.sh" > /usr/bin/gerar && chmod +x /usr/bin/gerar
tput cup 21 2
echo -e "\033[1;33mExcelente, Ahora Escribe el Comando \033[1;31mgerar.sh o gerar \033[0m"
tput cup 22 2
echo -e "\033[1;33mPara Administrar Sus Keys y Actualizar la Base del servidor.\033[0m"
tput cup 23 0
echo -e "\033[1;36m-----------------------------------------------------------------\033[0m"
} || {
tput cup 20 0
echo -e "\033[1;36m--------------------------------------------------------------------\033[0m"
tput cup 21 20
echo -e "\033[1;33mKeys Invalida!"
tput cup 22 0
echo -e "\033[1;36m-----------------------------------------------------------------\033[0m"
}
echo -ne "\033[0m"
echo "qra-atsilK?29@%6087%?66d5K8888:%05+08+@@?+91" > /etc/key-gerador
apt-get install netcat -y &>/dev/null
apt-get install net-tools -y &>/dev/null
sed -i -e 's/\r$//' /usr/bin/gerar.sh

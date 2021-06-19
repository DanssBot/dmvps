clear
[[ -e /etc/newadm-instalacao ]] && BASICINST="$(cat /etc/newadm-instalacao)" || BASICINST="menu PGet.py ports.sh ADMbot.sh message.txt usercodes sockspy.sh POpen.py PPriv.py PPub.py PDirect.py speedtest.py speed.sh utils.sh dropbear.sh apacheon.sh openvpn.sh shadowsocks.sh ssl.sh sslmanager.sh squid.sh v2ray.sh vdoray.sh errormanager.sh shadowsock.sh shadown.sh ssrrmu.sh hora.sh htop.sh panelweb.sh Crear-Demo.sh nload.sh insta_painel painel.zip dados.zip"
IVAR="/etc/http-instas"
system=$(cat /etc/issue.net)
BARRA="\033[1;36m------------------------------------------------------------\033[0m"
echo -e "$BARRA"
men(){
echo "
<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
NEWADM GENERADOR BY @conectedmx
Version : ORIGINAL
>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
CANAL: https://t.me/conectedmx
GRUPO: https://t.me/ConectedMX_Vip
Página: fb.me/ANDROID9.0MX
>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
INSTALACIONES: $(cat $IVAR)
>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
"
}
SCPT_DIR="/etc/SCRIPT"
[[ ! -e ${SCPT_DIR} ]] && mkdir ${SCPT_DIR}
INSTA_ARQUIVOS="ADMVPS.zip"
DIR="/etc/http-shell"
LIST="lista.arq"
meu_ip () {
MIP=$(ip addr | grep 'inet' | grep -v inet6 | grep -vE '127\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}' | grep -o -E '[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}' | head -1)
MIP2=$(wget -qO- ipv4.icanhazip.com)
[[ "$MIP" != "$MIP2" ]] && IP="$MIP2" || IP="$MIP"
}
mudar_instacao () {
while [[ ${var[$value]} != 0 ]]; do
[[ -e /etc/newadm-instalacao ]] && BASICINST="$(cat /etc/newadm-instalacao)" || BASICINST="menu PGet.py ports.sh ADMbot.sh message.txt usercodes sockspy.sh POpen.py PPriv.py PPub.py PDirect.py speedtest.py speed.sh utils.sh dropbear.sh apacheon.sh openvpn.sh shadowsocks.sh ssl.sh sslmanager.sh squid.sh v2ray.sh vdoray.sh errormanager.sh shadowsock.sh shadown.sh ssrrmu.sh hora.sh htop.sh panelweb.sh Crear-Demo.sh nload.sh insta_painel painel.zip dados.zip"
clear
echo -e $BARRA
echo -e "MENU SELECION DE INSTALACION"
echo -e $BARRA
echo "[0] - FINALIZAR PROCEDIMENTO"
i=1
for arqx in `ls ${SCPT_DIR}`; do
[[ $arqx = @(gerar.sh|http-server.py) ]] && continue
[[ $(echo $BASICINST|grep -w "$arqx") ]] && echo "[$i] - [X] - $arqx" || echo "[$i] - [ ] - $arqx"
var[$i]="$arqx"
let i++
done
echo -ne "Selecione el Archivo [Adicionar/Eliminar]: "
read value
[[ -z ${var[$value]} ]] && return
if [[ $(echo $BASICINST|grep -w "${var[$value]}") ]]; then
rm /etc/newadm-instalacao
local BASIC=""
for INSTS in $(echo $BASICINST); do
[[ $INSTS = "${var[$value]}" ]] && continue
BASIC+="$INSTS "
done
echo $BASIC > /etc/newadm-instalacao
else
echo "$BASICINST ${var[$value]}" > /etc/newadm-instalacao
fi
done
}
fun_list () {
rm ${SCPT_DIR}/*.x.c &> /dev/null
unset KEY
KEY="$1"
[[ ! -e ${DIR} ]] && mkdir ${DIR}
i=0
VALUE+="gerar.sh instgerador.sh http-server.py $BASICINST"
for arqx in `ls ${SCPT_DIR}`; do
[[ $(echo $VALUE|grep -w "${arqx}") ]] && continue
echo -e "[$i] -> ${arqx}"
arq_list[$i]="${arqx}"
let i++
done
echo -e "[b] -> INSTALACION ADM"
read -p "Escoja los Archivos que seran agregados: " -e -i b readvalue
[[ ! -e ${DIR}/${KEY} ]] && mkdir ${DIR}/${KEY}
[[ -z $readvalue ]] && readvalue="b"
read -p "Nombre de Usuario ( dueño de la Key ): " nombrevalue
[[ -z $nombrechoue ]] && nombrevalue="unnamed"
if [[ $readvalue = @(b|B) ]]; then
arqslist="$BASICINST"
for arqx in `echo "${arqslist}"`; do
[[ -e ${DIR}/${KEY}/$arqx ]] && continue #ANULA ARQUIVO CASO EXISTA
cp ${SCPT_DIR}/$arqx ${DIR}/${KEY}/
echo "$arqx" >> ${DIR}/${KEY}/${LIST}
done
else
for arqx in `echo "${readvalue}"`; do
[[ -e ${DIR}/${KEY}/${arq_list[$arqx]} ]] && continue #ANULA ARQUIVO CASO EXISTA
rm ${SCPT_DIR}/*.x.c &> /dev/null
cp ${SCPT_DIR}/${arq_list[$arqx]} ${DIR}/${KEY}/
echo "${arq_list[$arqx]}" >> ${DIR}/${KEY}/${LIST}
done
echo "TRUE" >> ${DIR}/${KEY}/FERRAMENTA
fi
rm ${SCPT_DIR}/*.x.c &> /dev/null
echo "$nombrechoue" > ${DIR}/${KEY}.name
[[ ! -z $IPFIX ]] && echo "$IPFIX" > ${DIR}/${KEY}/keyfixa
echo -e "$BARRA"
echo -e "Key Activa, e Aguardando Instalacion!"
echo -e "$BARRA"
}
ofus () {
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
"3")txt[$i]="%";;
"%")txt[$i]="3";;
"/")txt[$i]="K";;
"K")txt[$i]="/";;
esac
txtofus+="${txt[$i]}"
done
echo "$txtofus" | rev
}
gerar_key () {
valuekey="$(date | md5sum | head -c10)"
valuekey+="$(echo $(($RANDOM*10))|head -c 5)"
fun_list "$valuekey"
keyfinal=$(ofus "$IP:8888/$valuekey/$LIST")
echo -e "KEY: $keyfinal"
echo -e "$BARRA"
echo -e "\e[1;37mScript : apt-get update -y; apt-get upgrade -y; wget https://raw.githubusercontent.com/lacasitamx/dankeladm/master/instalador/instalar.sh && chmod +x *.sh && ./instalar.sh"
echo -e "$BARRA"
read -p "Enter para finalizar"
}
att_gen_key () {
i=0
rm ${SCPT_DIR}/*.x.c &> /dev/null
[[ -z $(ls $DIR|grep -v "ERROR-KEY") ]] && return
echo "[$i] Retornar"
keys="$keys retorno"
let i++
for arqs in `ls $DIR|grep -v "ERROR-KEY"|grep -v ".name"`; do
arqsx=$(ofus "$IP:8888/$arqs/$LIST")
if [[ $(cat ${DIR}/${arqs}.name|grep GERADOR) ]]; then
echo -e "\033[1;31m[$i] $arqsx ($(cat ${DIR}/${arqs}.name))\033[1;32m ($(cat ${DIR}/${arqs}/keyfixa))\033[0m"
keys="$keys $arqs"
let i++
fi
done
keys=($keys)
echo -e "$BARRA"
while [[ -z ${keys[$value]} || -z $value ]]; do
read -p "Escoja cual Actualizar[t=todos]: " -e -i 0 value
done
[[ $value = 0 ]] && return
if [[ $value = @(t|T) ]]; then
i=0
[[ -z $(ls $DIR|grep -v "ERROR-KEY") ]] && return
for arqs in `ls $DIR|grep -v "ERROR-KEY"|grep -v ".name"`; do
KEYDIR="$DIR/$arqs"
rm $KEYDIR/*.x.c &> /dev/null
if [[ $(cat ${DIR}/${arqs}.name|grep GERADOR) ]]; then #Keyen Atualiza
rm ${KEYDIR}/${LIST}
for arqx in `ls $SCPT_DIR`; do
cp ${SCPT_DIR}/$arqx ${KEYDIR}/$arqx
echo "${arqx}" >> ${KEYDIR}/${LIST}
rm ${SCPT_DIR}/*.x.c &> /dev/null
rm $KEYDIR/*.x.c &> /dev/null
done
arqsx=$(ofus "$IP:8888/$arqs/$LIST")
echo -e "\033[1;33m[KEY]: $arqsx \033[1;32m(ATUALIZADA!)\033[0m"
fi
let i++
done
rm ${SCPT_DIR}/*.x.c &> /dev/null
echo -e "$BARRA"
echo -ne "\033[0m" && read -p "Enter"
return 0
fi
KEYDIR="$DIR/${keys[$value]}"
[[ -d "$KEYDIR" ]] && {
rm $KEYDIR/*.x.c &> /dev/null
rm ${KEYDIR}/${LIST}
for arqx in `ls $SCPT_DIR`; do
cp ${SCPT_DIR}/$arqx ${KEYDIR}/$arqx
echo "${arqx}" >> ${KEYDIR}/${LIST}
rm ${SCPT_DIR}/*.x.c &> /dev/null
rm $KEYDIR/*.x.c &> /dev/null
done
arqsx=$(ofus "$IP:8888/${keys[$value]}/$LIST")
echo -e "\033[1;33m[KEY]: $arqsx \033[1;32m(ATUALIZADA!)\033[0m"
read -p "Enter"
rm ${SCPT_DIR}/*.x.c &> /dev/null
}
}
remover_key () {
i=0
[[ -z $(ls $DIR|grep -v "ERROR-KEY") ]] && return
echo "[$i] Retornar"
keys="$keys retorno"
let i++
for arqs in `ls $DIR|grep -v "ERROR-KEY"|grep -v ".name"`; do
arqsx=$(ofus "$IP:8888/$arqs/$LIST")
if [[ ! -e ${DIR}/${arqs}/used.date ]]; then
echo -e "\033[1;32m[$i] $arqsx ($(cat ${DIR}/${arqs}.name))\033[1;33m (AGUARDANDO USO)\033[0m"
else
echo -e "\033[1;31m[$i] $arqsx ($(cat ${DIR}/${arqs}.name))\033[1;33m ($(cat ${DIR}/${arqs}/used.date) IP: $(cat ${DIR}/${arqs}/used))\033[0m"
fi
keys="$keys $arqs"
let i++
done
keys=($keys)
echo -e "$BARRA"
while [[ -z ${keys[$value]} || -z $value ]]; do
read -p "Escolha qual remover: " -e -i 0 value
done
[[ -d "$DIR/${keys[$value]}" ]] && rm -rf $DIR/${keys[$value]}* || return
}
remover_key_usada () {
i=0
[[ -z $(ls $DIR|grep -v "ERROR-KEY") ]] && return
for arqs in `ls $DIR|grep -v "ERROR-KEY"|grep -v ".name"`; do
arqsx=$(ofus "$IP:8888/$arqs/$LIST")
if [[ -e ${DIR}/${arqs}/used.date ]]; then #KEY USADA
if [[ $(ls -l -c ${DIR}/${arqs}/used.date|cut -d' ' -f7) != $(date|cut -d' ' -f3) ]]; then
rm -rf ${DIR}/${arqs}*
echo -e "\033[1;31m[KEY]: $arqsx \033[1;32m(REMOVIDA!)\033[0m"
else
echo -e "\033[1;32m[KEY]: $arqsx \033[1;32m(DENTRO DA VALIDADE!)\033[0m"
fi
else
echo -e "\033[1;32m[KEY]: $arqsx \033[1;32m(DENTRO DA VALIDADE!)\033[0m"
fi
let i++
done
echo -e "$BARRA"
echo -ne "\033[0m" && read -p "Enter"
}
start_gen () {
PIDGEN=$(ps x|grep -v grep|grep "http-server.sh")
if [[ ! $PIDGEN ]]; then
screen -dmS generador /bin/http-server.sh -start
else
killall http-server.sh
fi
}
message_gen () {
read -p "NEW MESSAGE: " MSGNEW
echo "$MSGNEW" > ${SCPT_DIR}/message.txt
echo -e "$BARRA"
}
actualizar (){
wget -O $HOME/fixkey.sh link &> /dev/null
chmod +x $HOME/fixkey.sh
cd $HOME
./fixkey.sh
rm $HOME/fixkey.sh &>/dev/null
}
rmv_iplib () {
echo -e "SERVIDORES DE KEY ATIVOS!"
rm /var/www/html/newlib && touch /var/www/html/newlib
rm ${SCPT_DIR}/*.x.c &> /dev/null
[[ -z $(ls $DIR|grep -v "ERROR-KEY") ]] && return
for arqs in `ls $DIR|grep -v "ERROR-KEY"|grep -v ".name"`; do
if [[ $(cat ${DIR}/${arqs}.name|grep GERADOR) ]]; then
var=$(cat ${DIR}/${arqs}.name)
ip=$(cat ${DIR}/${arqs}/keyfixa)
echo -ne "\033[1;31m[USUARIO]:(\033[1;32m${var%%[*}\033[1;31m) \033[1;33m[GERADOR]:\033[1;32m ($ip)\033[0m"
echo "$ip" >> /var/www/html/newlib && echo -e " \033[1;36m[ATUALIZADO]"
fi
done
echo "$ip" >> /var/www/html/newlib
echo -e "$BARRA"
read -p "Enter"
}
meu_ip
while true $varread != "ok"
do
clear
echo -e "\e[33m"
men
unset PID_GEN
PID_GEN=$(ps x|grep -v grep|grep "http-server.sh")
[[ ! $PID_GEN ]] && PID_GEN="\033[1;31moff" || PID_GEN="\033[1;32monline"
echo -e "\e[1;34mCREDITOS: \e[1;31m@Alexmod80\e[0m"
echo -e "Directorio \033[1;31m${SCPT_DIR}\033[0m"
echo -e "\e[1;34mSISTEMA : \e[1;31m$system"
echo -e "$BARRA\e[33m"
echo -e "[1] = GENERAR 1 KEY ALEATORIA"
echo -e "[2] = APAGAR | VER KEYS"
echo -e "[3] = LIMPIAR KEYS USADAS"
echo -e "[4] = ALTERAR ARCHIVOS DE KEY BASICA"
echo -e "[5] = START/STOP KEYGEN $PID_GEN\e[0m\033[33m"
echo -e "[6] = VER LOG"
echo -e "[7] = CAMBIAR MENSAGE"
echo -e "[8] = ACTUALIZAR GENERADOR"
echo -e "[9] = DESINSTALAR GENERADOR"
echo -e "[0] = SALIR"
echo -e "$BARRA"
echo -ne " SELECIONE UNA OPCION : "; read varread
case "$varread" in
0)exit;;
1)gerar_key;;
2)remover_key;;
3)remover_key_usada;;
4)mudar_instacao;;
5)start_gen;;
6)
cat /etc/gerar-sh-log || echo "NI UN LOG ENCONTRADO"
read -p "Enter"
;;
7)message_gen;;
8)
echo -e " NO HAY NI UN LINK DE ACTUALIZACION"
sleep 5s
;;
9)
rm -rf ${SCPT_DIR}
rm -rf /usr/bin/gerar &>/dev/null
rm -rf /usr/bin/gerar.sh &>/dev/null
rm -rf /etc/http-instas
rm -rf /etc/newadm-instalacao
killall http-server.sh
echo -e "DESINSTALADA"
sleep 2s
clear
exit
;;
esac
done
/usr/bin/gerar.sh

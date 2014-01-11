#
# TIC Soluções
# www.ticsolucoes.com.br
# suporte@ticsolucoes.com.br

function pause(){
   read -p "$*"
}

menu ()
{

   echo "OS System"
   echo ""
   echo "1 - CentOS"
   echo "2 - Debian"
   echo "3 - Executar comando3"
   echo ""
   echo "OBS. press 'ctrl+c' [Control + C] to Cancel"
   echo ""
   echo "Press option"
   read a
   case $a in

   1)yum install libconfuse-dev -y;;
   2)apt-get install libconfuse-dev -y;;
   3)clear
     echo "#######################################################"
     echo "#########  Install Depedence libconfuse-dev  ######### "
     echo "#######################################################
     pause 'Press [Enter] key to continue instal'
   ;;

   esac
}

menu

echo "##################################################"
echo "#                                                #"
echo "#          Install Zabbix Msg  1.0               #"
echo "#      TIC Soluções - www.ticsolucoes.com.br     #"
echo "##################################################"

pause 'Press [Enter] key to continue install.. Or [Control + C] to Cancel'

wget https://github.com/rodrigocrepaldi/Zabbix-Voice-Menssage/blob/master/Files/zabbix_msg_1.0
mv zabbix_msg_1.0 zabbix_msg
chmod +x zabbix_msg

wget  https://github.com/rodrigocrepaldi/Zabbix-Voice-Menssage/blob/master/Files/zabbix_msg.conf

clear

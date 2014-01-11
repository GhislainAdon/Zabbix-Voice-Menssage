Zabbix-Voice-Menssage
=====================

  Zabbix Send Voice menssage with Asterisk.

Contact
=====================

  . suporte@ticsolucoes.com.br
  
  . rodrigo.crepaldi@ticsolucoes.com.br
  
Credits
=====================

  . TIC Soluções - 
  
  . Rodrigo Crepaldi - 
  
  
Requirements
=====================

  . Zabbix Serer
  
  . Asterisk Server
  
  . lconfuse

Config Server Asterisk
=====================

  . Edit /etc/asterisk/manager.conf
  
  ########################################
  
  [general]
  
  enabled=yes
  
  port = 5038
  
  
  [zabbix_msg]
  
  secret=zabbix_msg
  
  deny=0.0.0.0/0.0.0.0
  
  permit=127.0.0.1/255.255.255.0 # Config IP Zabbix Server
  

  read = originate
  
  write = originate
  
  ############################################
  
  . Edit /etc/asterisk/extensions.conf
  
  ###########################################

  [alerta_zabbix]

  exten => s,1,Noop( ${AUDIO} )

  exten => s,n,Playback(/var/lib/asterisk/sounds/zabbix_msg/${AUDIO})
  
  exten => s,n,Playback(/var/lib/asterisk/sounds/zabbix_msg/${AUDIO})

  exten => s,n,Hangup

  ##########################################
  
  . Create audio files and upload /var/lib/asterisk/sounds/zabbix_msg/
  
  
Usage
=====================
  
  . chmod +x zabbix_msg
  
  . ./zabbix_msg AUDIO-FILE NUMBER
  
  .OBS: Number must follow the rule Context Asterisk Server.
  
  

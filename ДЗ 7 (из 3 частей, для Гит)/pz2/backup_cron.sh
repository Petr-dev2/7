#!/bin/bash

# Резервное копирование директории /home
tar cpf /archive/"home-backup created on `date '+%d-%B-%Y'`.tar" /home

# Резервное копирование конфигурационных файлов SSH, RDP и FTP
tar cpf /archive/"conf created on `date '+%d-%B-%Y'`.tar" /etc/ssh/sshd_config /etc/xrdp/xrdp.ini /etc/vsftpd.conf

# Резервное копирование директории /var/log
tar cpf /archive/"log created on `date '+%d-%B-%Y'`.tar" /var/log

#!/bin/bash

#1. Using brace expansion, create the following four directories:
#mkdir -p ~/backups/{freemem,diskuse,openlist,freedisk}

#2. 

free -h > ~/backups/freemem/free_mem.txt
du -h > ~/backups/diskuse/disk_usage.txt
lsof > ~/backups/openlist/open_list.txt
df -h > ~/backups/freedisk/free_disk.txt

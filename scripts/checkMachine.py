#!/usr/bin/env python3
# -*- coding: utf-8 -*-

from os import popen 

commands = { 
"Nestat: Open connections at port 80":"netstat -tn 2>/dev/null | grep :80 | awk '{print $5}' | cut -d: -$
"Netstat":"netstat -tuapn", 
"Crontabs":"ls /var/spool/cron/crontabs/ ",
"SSH connections":"tail -n 1000 /var/log/auth.log | grep sshd",
"History":"tail -n 100 ~/.bash_history | more"
}
for command in commands:
        print('--------------------------------------------------------')
        print('Executing command: '+command)
        to_run_command = commands[command]
        if command == "Netstat": 
                IP = input('Selected IP or not: ')
                if IP != 'not': to_run_command += ' | grep '+IP
        lines = popen(to_run_command)
        for line in lines: print(line[0:-1])


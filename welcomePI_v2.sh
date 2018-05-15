#!/bin/sh

# version 1.0
# 26/12/2017


ip=`ip addr show scope global | grep inet | cut -d' ' -f6 | cut -d/ -f1`
up=`uptime | awk -F"up " '{print $2}' | awk -F"," '{print $1}'`

    echo "\033[0;32m
        .~~.   .~~.
       '. \ ' ' / .'\033[0;31m
        .~ .~~~..~.    \033[0;37m \033[0;31m
       : .~.'~'.~. :   \033[0;37m  ╦═╗╔═╗╔═╗╔═╗╔╗ ╔═╗╦═╗╦═╗╦ ╦  ╔═╗╦\033[0;31m
      ~ (   ) (   ) ~  \033[0;37m  ╠╦╝╠═╣╚═╗╠═╝╠╩╗║╣ ╠╦╝╠╦╝╚╦╝  ╠═╝║\033[0;31m
     ( : '~'.~.'~' : ) \033[0;37m  ╩╚═╩ ╩╚═╝╩  ╚═╝╚═╝╩╚═╩╚═ ╩   ╩  ╩\033[0;31m
      ~ .~ (   ) ~. ~  \033[0;37m \033[0;31m
       (  : '~' :  )
        '~ .~~~. ~'
            '~'

        \033[0;34m`hostname -f`
        \033[1;30mIP: \033[0;32m$ip
        \033[1;30mUp:\033[0;33m$up
        \033[0;30m"

# FIN
#!/bin/bash

source "/vagrant/scripts/common.sh"

function setupUtilities {
    # update the locate database
    updatedb
}

function setupVIM {
#    Use the full vim version 
    export DEBIAN_FRONTEND=noninteractive
apt-get remove -y vim.tiny
    export DEBIAN_FRONTEND=noninteractive
apt-get install -y vim
}

function setupNetStat {
#   Setup netstat (usful for debug)
    export DEBIAN_FRONTEND=noninteractive
apt-get install -y net-tools
}
echo "finalize ubuntu"
setupUtilities
echo "setup vim"
setupVIM
echo "setup netstat"
setupNetStat

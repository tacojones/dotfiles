    #!/bin/bash

    black='\e[0;30m'
    blue='\e[0;34m'
    green='\e[0;32m'
    cyan='\e[0;36m'
    red='\e[0;31m'
    purple='\e[0;35m'
    brown='\e[0;33m'
    lightgray='\e[0;37m'
    darkgray='\e[1;30m'
    lightblue='\e[1;34m'
    lightgreen='\e[1;32m'
    lightcyan='\e[1;36m'
    lightred='\e[1;31m'
    lightpurple='\e[1;35m'
    yellow='\e[1;33m'
    white='\e[1;37m'
    nc='\e[0m'

    PS1="\e[1;32m\W \$\e[1;37m "
    # don't put duplicate lines in the history. See bash(1) for more options
    export HISTCONTROL=ignoredups
    # append to the history file, don't overwrite it
    shopt -s histappend

    # for setting history length see HISTSIZE and HISTFILESIZE in bash(1)
    HISTSIZE=1000
    HISTFILESIZE=2000
    # update the values of LINES and COLUMNS.
    shopt -s checkwinsize

    #------------------------------------------////
    # System Information:
    #------------------------------------------////
    # echo -ne "${nc}Today is:\t\t${green}" `date`; echo ""
    # echo -e "${nc}Kernel Information: \t${blue}" `uname -smr`
    # echo -e "${nc}"""

somafm()
{
local station;echo "Select a station to listen to:";select station in "Doomed" "Groove Salad" "Lush" "Suburbs of Goa" "Secret Agent" "Drone Zone" "Space Station" "cliqhop idm" "Digitalis" "Sonic Universe" "Boot Liquor" "Covers" "Illinois Street Lounge" "indie pop rocks" "PopTron" "Tags Trip" "Beat Bender" "Mission Control";do station=$(echo -n "$station"|tr '[:upper:]' '[:lower:]'|sed 's/ //g');break;done;mpg123 -@ http://somafm.com/startstream=${station}.pls;
}

alias guitar='for n in E2 A2 D3 G3 B3 E4;do play -n synth 4 pluck $n repeat 2;done'
alias dnalounge='mpg123 -vv http://cerebrum.dnalounge.com:8000/radio'
alias smod='mpv http://64.150.176.42:8242/stream'
alias debinstall='sudo apt-get -t jessie-backports install'

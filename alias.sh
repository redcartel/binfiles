# source ~/binfiles/alias.sh in .bashrc

#export PATH="/home/redcartel/binfiles:/home/redcartel/.local/bin:/home/redcartel/installfiles/:$PATH"

# alias virtualenv='python3 -m virtualenv'
# alias venv='if [ ! -d "venv" ]; then virtualenv venv; source venv/bin/activate; elif [ -z "$VIRTUAL_ENV" ]; then source venv/bin/activate; else deactivate; fi'

alias ducksa='du -cks -BM * .??* | sort -rn | head -n 24'
alias ducks='du -cks -BM * | sort -rn | head -n 24'
alias ":q"=exit
alias "o"=xdg-open
alias "open"=xdg-open


######### "Working Directory" Commands ###########

wk() {
    # create a symlinke ~/wk to the current directory & 
    # log the current directory
    rm -f ~/wk
    ln -s "$(pwd)" ~/wk
    echo "$(pwd)" >> ~/var/log/wk.log
}

cdwk() {
    # go to the last directory marked with wk, expands the symlink path
    cd "$(readlink ~/wk)"
}

#alias wk='rm -f ~/wk && ln -s "$(pwd)" ~/wk && echo "$(pwd)" >> ~/var/log/wk.log'
#alias cdwk='cd "$(readlink ~/wk)"'

wd() {
    # outputs the nth most recent directory logged by wk
    tail -n $1 ~/var/log/wk.log | head -n 1
}

w() {
    # moves into the nth most recent directory logged by wk
    if [ -z $1 ]; then
        cdwk
    else
        DIR=wd $1
        cd "$DIR"
    fi
}

#alias w1='cd "$(_cdwn.sh 1)"'
#alias w2='cd "$(_cdwn.sh 2)"'
#alias w3='cd "$(_cdwn.sh 3)"'
#alias w4='cd "$(_cdwn.sh 4)"'
#alias w5='cd "$(_cdwn.sh 5)"'
#alias w6='cd "$(_cdwn.sh 6)"'
#alias w7='cd "$(_cdwn.sh 7)"'
#alias w8='cd "$(_cdwn.sh 8)"'
#alias w9='cd "$(_cdwn.sh 9)"'




#### HISTORY FUNCTIONS ####

# reload current terminal history, getting commands from other terminals
hupdate() {
    history -c
    history -r
}

# clear history back to n lines, n defaults to 500
hpurge() {
    if [ -z $1 ]; then
        LINES=500
    else
        LINES=$1
    fi
    HISTSIZE=$LINES
    HISTFILESIZE=$LINES
    history -c
    history -r
}

# rewrite .bash_history with current session history
hrebuild() {
    history > ~/.bash_history
}

:q() {
    echo "ok"
}

########## Today Folders #####################################################

cdt() {
    # Creates a Today folder and creates a symlink ~/td to it
    mkdir -p `td`
    rm -f ~/td
    ln -s `td` $HOME/td
    cd `td`
}

td() {
    # Returns the path to today's Today folder
    DIR=$HOME/Today/`bytedate -p`-cohort/`bytedate -r`
    echo $DIR
}

############### Python virtual environment ###################################

venv() {
    # if no virtual environment exists, create one & activate
    # if not active, activate
    # if active, deactivate
    if [ -z "$VIRTUAL_ENV" ]; then 
        if [ ! -d "venv" ]; then
            virtualenv --system-site-packages venv
            source venv/bin/activate;
        else
            source venv/bin/activate
        fi
    else
        deactivate
    fi
}

##### simple aliases

alias :e='vim '

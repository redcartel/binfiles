# source ~/bin/alias.sh  # copy to .bashrc and .zshrc

export PATH="/home/redcartel/binfiles:/home/redcartel/.local/bin:/home/redcartel/installfiles/:$PATH"

mkdir -p ~/w

# alias virtualenv='python3 -m virtualenv'
alias venv='if [ ! -d "venv" ]; then virtualenv venv; source venv/bin/activate; elif [ -z "$VIRTUAL_ENV" ]; then source venv/bin/activate; else deactivate; fi'

alias npm-exec='PATH=$(npm bin):$PATH'

alias suds='history | grep "sudo apt" | grep "install" | grep -v "grep"'

alias run='bash run.sh'
alias utest='bash test.sh'

alias wk='rm -f ~/wk && ln -s $(pwd -P) ~/wk && echo "$(pwd -P)" >> ~/var/log/wk.log'
alias cdwk='cd $(readlink ~/wk)'
alias lswk='tail -n 22 ~/var/log/wk.log'

alias w1='cd $(_cdwn.sh 1)'
alias w2='cd $(_cdwn.sh 2)'
alias w3='cd $(_cdwn.sh 3)'
alias w4='cd $(_cdwn.sh 4)'
alias w5='cd $(_cdwn.sh 5)'
alias w6='cd $(_cdwn.sh 6)'
alias w7='cd $(_cdwn.sh 7)'
alias w8='cd $(_cdwn.sh 8)'
alias w9='cd $(_cdwn.sh 9)'


alias tdn='vim ~/etc/todo-now.txt'
alias tdt='vim ~/etc/todo-then.txt'
alias tdl='vim ~/etc/todo-life.txt'

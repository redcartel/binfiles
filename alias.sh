# source ~/bin/alias.sh  # copy to .bashrc and .zshrc

PATH="/home/redcartel/bin:$(yarn global bin):$PATH"

mkdir -p ~/w

alias python=python3
alias pip=pip3
alias virtualenv='python3 -m virtualenv'
alias venv='source *venv*/bin/activate'

alias cdwk='cd $(readlink ~/wk)'
alias wk='rm -f ~/wk && ln -s $(pwd -P) ~/wk'

alias cdw2='cd $(readlink ~/w/w2)'
alias w2='rm -f ~/w/w2 && ln -s $(pwd -P) ~/w/w2'

alias cdw3='cd $(readlink ~/w/w3)'
alias w3='rm -f ~/w/w3 && ln -s $(pwd -P) ~/w/w3'

alias cdw4='cd $(readlink ~/w/w4)'
alias w4='rm -f ~/w/w4 && ln -s $(pwd -P) ~/w/w4'

alias cdw5='cd $(readlink ~/w/w5)'
alias w5='rm -f ~/w/w5 && ln -s $(pwd -P) ~/w/w5'

alias cdw6='cd $(readlink ~/w/w6)'
alias w6='rm -f ~/w/w6 && ln -s $(pwd -P) ~/w/w6'

alias cdw7='cd $(readlink ~/w/w7)'
alias w7='rm -f ~/w/w7 && ln -s $(pwd -P) ~/w/w7'

alias cdw8='cd $(readlink ~/w/w8)'
alias w8='rm -f ~/w/w8 && ln -s $(pwd -P) ~/w/w8'

alias cdw9='cd $(readlink ~/w/w9)'
alias w9='rm -f ~/w/w9 && ln -s $(pwd -P) ~/w/w9'

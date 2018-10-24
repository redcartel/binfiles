# source ~/bin/alias.sh  # copy to .bashrc and .zshrc

PATH="/home/redcartel/bin:$PATH"

alias python=python3
alias pip=pip3
alias venv='source *venv*/bin/activate'

alias cdwk='cd $(readlink ~/wk)'
alias wk='rm -f ~/wk && ln -s $(pwd -P) ~/wk'

alias cdw2='cd $(readlink ~/w2)'
alias w2='rm -f ~/w2 && ln -s $(pwd -P) ~/w2'

alias cdw3='cd $(readlink ~/w3)'
alias w3='rm -f ~/w3 && ln -s $(pwd -P) ~/w3'

alias cdw4='cd $(readlink ~/w4)'
alias w4='rm -f ~/w4 && ln -s $(pwd -P) ~/w4'

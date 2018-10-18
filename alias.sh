# source ~/bin/alias.sh  # copy to .bashrc and .zshrc

alias python=python3
alias pip=pip3
# alias icd='cd /home/redcartel/cdrive/byte/instruction/icd-example'
alias venv='source *venv*/bin/activate'
alias cdwk='cd $(readlink ~/wk)'
alias wk='rm -f ~/wk && ln -s $(pwd -P) ~/wk'

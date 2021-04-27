# PATH variable append
set -a PATH ~/.local/bin/
set -a PATH /usr/sbin/

# Fish aliases made by Carlo
export EDITOR=/usr/bin/vim
alias cls=clear
alias df='df -h'
alias cd..='cd ..'

# display logo
neofetch 

# git command to backup dotfiles
alias config='/usr/bin/git --git-dir=$HOME/.cfg --work-tree=$HOME'

#!/bin/sh
###########################################################################
#  EXPORTS 
###########################################################################
    # PATH evn
    export PATH="/usr/local/share/python:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:$HOME/Library/Python/2.7/bin"
    export EDITOR=vim
    # export PYTHONPATH=$PYTHONPATH
    # export MANPATH="/usr/local/man:$MANPATH"

    # Virtual Environment
    export WORKON_HOME=$HOME/.virtualenvs
    export PROJECT_HOME=$HOME/Projects
    source /usr/local/bin/virtualenvwrapper.sh

    # Owner
    export USER_NAME="TrangTran"
    #eval "$(rbenv init -)"

###########################################################################
#  FUNCTIONS 
###########################################################################
    # FileSearch
    function f() { find . -iname "*$1*" ${@:2} }
    function r() { grep "$1" ${@:2} -R . }

    #mkdir and cd
    function mkcd() { mkdir -p "$@" && cd "$_"; }

###########################################################################
#  ALIASES 
###########################################################################
    alias cppcompile='c++ -std=c++11 -stdlib=libc++'

    # Use vim for editing config files
    alias zshcfg="vim ~/.zshrc"
    alias envcfg="vim ~/Projects/config/env.sh"
    alias rm='rm -i'

    eval `gdircolors -b ~/.dir_colors`
    alias ls='gls -hF --color=auto'
    alias grep="grep --color=always"
    alias egrep="egrep --color=always"
    alias dls="cd $HOME/Downloads"
    alias docs="cd $HOME/Documents"
    alias vimcfg="vim $HOME/dotfiles/vimrc"
    alias zshcfg="vim $HOME/dotfiles/zshrc"
    alias tmuxcfg="vim $HOME/dotfiles/tmux.conf"
    alias v="vim"
    alias g="git"

###########################################################################
#  CUSTOM INSTALLATIONS 
###########################################################################
    #Install ecd
    export ENHANCD_COMMAND=ecd 
    export ENHANCD_FILTER=fzy:percol
    source ~/Downloads/enhancd/init.sh

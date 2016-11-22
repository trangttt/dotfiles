 #!/bin/zsh

    # PATH
    export PATH="/usr/local/share/python:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:$HOME/Library/Python/2.7/bin"
    export EDITOR='vim'
    # export PYTHONPATH=$PYTHONPATH
    # export MANPATH="/usr/local/man:$MANPATH"

    # Virtual Environment
    export WORKON_HOME=$HOME/.virtualenvs
    export PROJECT_HOME=$HOME/Projects
    source /usr/local/bin/virtualenvwrapper.sh

    # Owner
    export USER_NAME="TrangTran"
    eval "$(rbenv init -)"

    # FileSearch
    function f() { find . -iname "*$1*" ${@:2} }
    function r() { grep "$1" ${@:2} -R . }

    #mkdir and cd
    function mkcd() { mkdir -p "$@" && cd "$_"; }

    # Aliases
    alias cppcompile='c++ -std=c++11 -stdlib=libc++'

    # Use sublimetext for editing config files
    alias zshconfig="subl ~/.zshrc"
    alias envconfig="subl ~/Projects/config/env.sh"
    alias rm='rm -i'

    #Install ecd
    export ENHANCD_COMMAND=ecd 
    export ENHANCD_FILTER=fzy:percol
    source ~/Downloads/enhancd/init.sh


    eval `gdircolors -b ~/.dir_colors`
    alias ls='gls -hF --color=auto'
    alias grep="grep --color=always"
    alias egrep="egrep --color=always"
    alias dls="cd $HOME/Downloads"
    alias docs="cd $HOME/Documents"
    alias vimcfg="vim $HOME/.vimrc"
    alias zshcfg="vim $HOME/.zshrc"
    alias tmuxcfg="vim $HOME/.tmux.conf"
    alias v="vim"

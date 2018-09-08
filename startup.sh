#/bin/bash

link() {
files=(zshrc zpreztorc vimrc tmux.conf bash_profile bash_prompt bashrc gitconfig gitignore_global)
for i in "${files[@]}"
do
	echo "$i"
	if [ -f ${HOME}/."$i" ]; then
		echo  "$i exists. Skip"
	else
		ln -s ${HOME}/dotfiles/"$i" ${HOME}/."$i"
	fi
done
}

boostrap () {
    # install Vundle
    git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

    # Install Vim bundle
    vim +PluginInstall +qall

    # install ctags
    brew install ctags

    # install gcolordirs
    brew install coreutils
    brew install exa


    # Create PROGRAMS dir
    mkdir ${HOME}/Documents/PROGRAMS

    # Install enhancd
    cd ${HOME}/Documents/PROGRAMS; git clone https://github.com/b4b4r07/enhancd
    brew install fzy

    brew install autoenv
    pip install virtualenvwrapper

    # powerlevel9k theme
    git clone https://github.com/bhilburn/powerlevel9k.git ~/.oh-my-zsh/custom/themes/powerlevel9k

    # unknown tmux command
    # bind-key -t vi-copy
    # bind-key -T copy-mode-vi

}

# git clone powerfont-theme

# initialize nvim
init_nvim() {
    ln -s ${HOME}/.vimrc ${HOME}/.config/nvim/init.vim
}


init_nvim



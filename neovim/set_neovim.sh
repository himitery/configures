#!/bin/zsh

OS=${1}
UBUNTU="Ubuntu"
MAC="Mac"

{if [ "${OS}" = "${UBUNTU}" ] ; then
    echo "Install neovim for Ubuntu"

    sudo apt update
    sudo apt install curl
    sudo apt install nodejs -y
    sudo apt install neovim -y

elif [ "${OS}" = "${MAC}" ] ; then
    echo "Install neovim for Mac"

    brew update
    brew install curl
    brew install node
    brew install neovim

else
    echo "Please select your os - ${UBUNTU}, ${MAC}"

    echo "ex) ./set_neovim.sh Ubuntu"
    echo "ex) ./set_neovim.sh Mac"
    return
fi

echo "Install vim-plug"
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'

echo "alias vi=\"nvim\"" >> ~/.zshrc
echo "alias vim=\"vim\"" >> ~/.zshrc

mkdir -p ~/.config/nvim
touch ~/.config/nvim/init.vim

cat ./init.vim > ~/.config/nvim/init.vim
nvim +PlugInstall} || {
    echo "Failed"
}

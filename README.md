# Kagaya's vim config

# How to use 

### Install:

```shell
cd ~/.config
git clone https://github.com/kagaya85/kagaya.vim.git
mv kagaya.vim nvim
```

### Install vim-plug:

see [vim-plug](https://github.com/junegunn/vim-plug)

vim:
```shell
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
```

neovim:
```shell
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
```

### Install coc.nvim

```shell
curl -sL install-node.now.sh/lts | sudo bash
```

### Install ctags

ubuntu:
```shell
sudo apt-get install ctags
```

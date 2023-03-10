# Kagaya's vim config

archived: vimscript plug-in version

neovim config with [vim-plug](https://github.com/junegunn/vim-plug) and [nvim-lspconfig](https://github.com/neovim/nvim-lspconfig)

# How to use 

### Install:

```shell
cd ~/.config
git clone https://github.com/kagaya85/kagaya.vim.git
mv kagaya.vim nvim
```

### Install vim-plug:

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

### Install ctags

ubuntu:
```shell
sudo apt-get install ctags
```

### Install LSP server
```shell
# go
go install golang.org/x/tools/gopls@latest

# python
npm install -g pyright

# javascript
npm install -g typescript typescript-language-server
```


# kens_zsh_configuration
My configuration and functions for zsh.



## Usage

### Preparation

Please install zsh, oh-my-zsh and autojump first:

```shell
brew install zsh autojump
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
chsh -s $(which zsh)
```



### Download file, save it to a desirable foler, like inside Dropbox. 

```shell
# e.g. save file into
~/Dropbox/Mac/kens_zsh_configuration/zshrc
```



### Link configs

```shell
mv ~/.zshrc ~/.zshrc.bk
ln -s ~/Dropbox/Mac/kens_zsh_configuration/zshrc ~/.zshrc
```


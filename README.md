# dotfiles

```
sudo apt -y install git vim zsh-syntax-highlighting tmux curl exa
```

```
git clone https://github.com/Kudusch/dotfiles
```

```
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```

```
git clone https://github.com/gpakosz/.tmux.git
ln -s -f .tmux/.tmux.conf
```

```
cp .zshrc ..
```

```
cp .vimrc ..
```

```
cp .bashrc ..
```

```
cp .tmux.conf.local ..
```

```
cp kudusch.zsh-theme ~/.oh-my-zsh/custom/theme
```

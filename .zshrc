# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="robbyrussell"

ZSH_THEME="bullet-train"
BULLETTRAIN_PROMPT_ORDER=(
    	time
	git
	#context
	dir
	status
    	#custom
        #perl
    	#ruby
	#python
    	virtualenv
    	#nvm
    	#aws
    	#go
    	#elixir
    	#hg
    	cmd_exec_time
)
BULLETTRAIN_VIRTUALENV_PREFIX=""
#BULLETTRAIN_VIRTUALENV_FG="white"
#BULLETTRAIN_VIRTUALENV_BG="green"
BULLETTRAIN_PROMPT_CHAR=">"

plugins=(git encode64 osx terminalapp colored-man)
source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

source $ZSH/oh-my-zsh.sh

# Customize to your needs...
export PATH=/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/usr/X11/bin:/usr/local/MacGPG2/bin
export PATH=$PATH:/usr/local/go/bin

PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting

PATH=$PATH:/Applications/Sublime\ Text.app/Contents/SharedSupport/bin/

# Advanced Aliases by Kudusch
alias ll='exa -lFh -a --extended --long --git'     #size,show type,human readable
alias l='exa --long'
alias la='exa --long -a'
alias lg='exa --long --git -a'
alias ltree='exa --tree --level=2 --long'
alias zshrc='vim ~/.zshrc' # Quick access to the ~/.zshrc file
alias .='open .'
alias ..='cd ../'
alias ...='cd ../../'
alias ....='cd ../../../'
alias .....='cd ../../../../'
alias getip='curl -k https://ip.kudusch.de'
alias getlocal='ifconfig | grep "inet " | grep -v "127.0.0.1" | cut -d " " -f 2'
alias mtr='sudo /usr/local/sbin/mtr'
alias desk='cd ~/Desktop'
alias ql='qlmanage -p "$@" > /dev/null'
alias imagesize='sips -g pixelHeight -g pixelWidth $1'
alias isdown='ping -c 5 google.com'
current-dl () {
	curPATH=$(pwd)
	cd ~/Downloads    
	URL=$(osascript -e 'tell application "Safari" to tell window 1 to return URL of current tab')
	youtube-dl $@ $URL
	cd "$curPATH"
}
alias starwars='telnet towel.blinkenlights.nl 23'
maze () {
	L=$LINES
	C=$COLUMNS
	P=$((($L * $C)-1))
	while;do;clear; f="╱╲";for i in {1..$P} times:;do sleep $@;print -n ${f[(RANDOM % 2) + 1]};done; sleep 2; done
}
alias siri='say "$@" -v "Samantha"'
cdl () {
	cd $@
	ls .
}
alias webserver='IP=$(/sbin/ifconfig | grep "inet " | grep -v "127.0.0.1" | cut -d " " -f 2 | head -n 1); echo "http://"$IP":8080" | pbcopy; php -S $IP:8080 -t .'

# Locale export
export LANG=de_DE.UTF-8
export LC_ALL=de_DE.UTF-8
export LC_CTYPE=de_DE.UTF-8

setopt COMBINING_CHARS
setopt printeightbit

export EDITOR=vim

#export PYTHONPATH=$PYTHONPATH:/usr/local/lib/python2.7/site-packages
#export PYTHONPATH=$PYTHONPATH:/usr/local/lib/python3.6/site-packages

zstyle ':completion:*:default' list-colors ${(s.:.)LS_COLORS}

unalias grv
export PATH="/usr/local/bin:$PATH"


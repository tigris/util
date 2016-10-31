if [ -f "/etc/bash.bashrc" ]; then
  source "/etc/bash.bashrc"
fi

if [ -f "$HOME/.bashrc.private" ]; then
  source "$HOME/.bashrc.private"
fi

umask 002
set -o ignoreeof

shopt -s histappend
HISTCONTROL=ignoreboth
HISTIGNORE="pwd:ls:ls -l:ls -la:l:history"
HISTTIMEFORMAT='%F %T '

export PAGER="less -eRiXF"
export GPG_TTY=`tty`

unset MAIL
unset MAILCHECK

alias l='ls -lA'
alias c='clear'
alias x='exit'

alias sl='ls' # How lazy am i? ;-)
alias dc='cd' # I never could figure out that shit calculator anyway

alias chmox='chmod +x'
alias rgrep='grep -r'
alias diff='diff -u'
alias less=$PAGER # don't use .lesskey, it screws your git paging/coloring!

alias dmp='vim ~/junk/dmp'
alias golf='vim ~/junk/golf'
alias sql='vim ~/junk/dmp.sql'

alias sshd='ssh -p 28 danial@doc.home.tigris.id.au'
alias ssht='ssh danial@tigris.id.au'

alias be='bundle exec'
alias bi='bundle install'
alias bu='bundle update'
alias ber='bundle exec rake'
alias bera='bundle exec rubocop -a'
alias my='mysql -u root'

# Git stuff cos I'm lazier than a sloth
alias gp='git pull --rebase'
alias gpush='git push'
alias gr='git rebase'
alias gs='git status'
alias gd='git diff'
alias gdc='git diff --cached'
alias ga='git add'
alias gc='git commit'

# docker docker docker
alias dr='docker run --rm -it'

alias subl='/Applications/Sublime\ Text.app/Contents/SharedSupport/bin/subl'
alias dm='docker-machine'

if [ -f "$HOME/.bash/term/$TERM" ]; then
  source "$HOME/.bash/term/$TERM"
fi

DISTRO=`uname`
if [ -f "$HOME/.bash/distro/$DISTRO" ]; then
  source "$HOME/.bash/distro/$DISTRO"
fi

SHORT_HOST=`hostname | sed 's/\..*//g'`
if [ -f "$HOME/.bash/host/$SHORT_HOST" ]; then
  source "$HOME/.bash/host/$SHORT_HOST"
fi

if [ `which vim` ]; then
  alias vi='vim'
  export EDITOR="vim"
else
  export EDITOR="vi"
fi

dircolors=`which dircolors > /dev/null`
if [ -f "$HOME/.dircolors" -a "x$?" == "x0" ]; then
  DIRCOLOR_VERSION=`dircolors --version | grep dircolors | awk '{ print $4 }' | cut -f1 -d'.'`
  if [ $DIRCOLOR_VERSION == "7" ]; then
    source $HOME/.dircolors.old.compiled
  else
    source $HOME/.dircolors.compiled
  fi
fi

# rvm
[[ -s $HOME/.rvm/scripts/rvm ]] && source $HOME/.rvm/scripts/rvm

# rbenv
if [ -d "$HOME/.rbenv" ]; then
  export PATH="$HOME/.rbenv/bin:$PATH"
  eval "$(rbenv init -)"
fi

if [ -f "$HOME/.oldpwd" ]; then
  cd "`cat "$HOME/.oldpwd"`"
  rm -f "$HOME/.oldpwd"
fi

# chruby
if [ -e /usr/local/opt/chruby/share/chruby/chruby.sh ]; then
  source /usr/local/opt/chruby/share/chruby/chruby.sh
fi

# chruby auto switch
if [ -e /usr/local/opt/chruby/share/chruby/auto.sh ]; then
  source /usr/local/opt/chruby/share/chruby/auto.sh
fi

# Path fixes
if [ -z "$(echo $PATH | grep /usr/local/sbin)" ]; then
  export PATH="/usr/local/sbin:$PATH"
fi

if [ -z "$(echo $PATH | grep node_modules)" ]; then
  export PATH="./node_modules/.bin:$PATH"
fi

if [ -z "$(echo $PATH | grep $HOME/bin)" ]; then
  export PATH="$HOME/bin:$PATH"
fi

NPMBIN=`npm -g bin 2>/dev/null`
if [ "x$NPMBIN" != "x" ]; then
  export PATH="$NPMBIN:$PATH"
fi

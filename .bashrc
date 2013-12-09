if [ -f "/etc/bash.bashrc" ]; then
    source "/etc/bash.bashrc"
fi

umask 002
set -o ignoreeof

export PAGER="less -eRiXF"

unset MAIL
unset MAILCHECK

alias l='ls -lA'
alias c='clear'
alias x='exit'

alias sl='ls' # How lazy am i? ;-)
alias dc='cd' # I never could figure out that shit calculator anyway

alias rgrep='grep -r'
alias diff='diff -u'
alias less=$PAGER # don't use .lesskey, it screws your git paging/coloring!

alias dmp='vim ~/junk/dmp'
alias golf='vim ~/junk/golf'
alias sql='vim ~/junk/dmp.sql'

alias sshd='ssh doc.home.tigris.id.au'
alias ssht='ssh tigris.id.au'

alias be='bundle exec'
alias bi='bundle install'
alias ber='bundle exec rake'
alias my='mysql -u root'

if [ `which vim` ]; then
  alias vi='vim'
  export EDITOR="vim"
else
  export EDITOR="vi"
fi

if [ -f "$HOME/.bash/term/$TERM" ]; then
  source "$HOME/.bash/term/$TERM"
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

DISTRO=`uname`
if [ -f "$HOME/.bash/distro/$DISTRO" ]; then
  source "$HOME/.bash/distro/$DISTRO"
fi

SHORT_HOST=`hostname | sed 's/\..*//g'`
if [ -f "$HOME/.bash/host/$SHORT_HOST" ]; then
  source "$HOME/.bash/host/$SHORT_HOST"
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

export PATH="$HOME/bin:$PATH"

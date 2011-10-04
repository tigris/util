if [ -f "/etc/bash.bashrc" ]; then
    source "/etc/bash.bashrc"
fi

# rvm
[[ -s $HOME/.rvm/scripts/rvm ]] && source $HOME/.rvm/scripts/rvm

export BASH_ENV="$HOME/.bashrc"
export PAGER="less -eRiXF"
export CVS_RSH="ssh"
export RUBYOPT=rubygems

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
alias ssho='ssh dev.office.statelesssystems.com'

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
    cat "$HOME/.dircolors" | sed 's/MULTIHARDLINK/HARDLINK/' | dircolors -b - > /tmp/dircolors-$USER
  else
    dircolors -b "$HOME/.dircolors" > /tmp/dircolors-$USER
  fi
  source /tmp/dircolors-$USER
  rm /tmp/dircolors-$USER
fi

DISTRO=`uname`
if [ -f "$HOME/.bash/distro/$DISTRO" ]; then
    source "$HOME/.bash/distro/$DISTRO"
fi

SHORT_HOST=`hostname | sed 's/\..*//g'`
if [ -f "$HOME/.bash/host/$SHORT_HOST" ]; then
    source "$HOME/.bash/host/$SHORT_HOST"
fi

if [ -f "$HOME/.oldpwd" ]; then
    cd `cat "$HOME/.oldpwd"`
    rm "$HOME/.oldpwd"
fi

export PATH="$HOME/bin:$HOME/.rvm/bin:$HOME/.gem/ruby/1.8/bin:$PATH"

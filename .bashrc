if [ -f "/etc/bash.bashrc" ]; then
    source "/etc/bash.bashrc"
fi

export BASH_ENV="$HOME/.bashrc"
export PAGER="less -iX"
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
alias less='less -iX' # don't use .lesskey, it screws your git paging/coloring!

alias dmp='vim ~/junk/dmp.pl'
alias golf='vim ~/junk/golf.pl'
alias sql='vim ~/junk/dmp.sql'

if [ `which vim` ]; then
    alias vi='vim'
    export EDITOR="vim"
else
    export EDITOR="vi"
fi

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

if [ -f "$HOME/.oldpwd" ]; then
    cd `cat "$HOME/.oldpwd"`
    rm "$HOME/.oldpwd"
fi

export PATH="$HOME/bin:$PATH"

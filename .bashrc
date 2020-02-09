if [ -f "/etc/bash.bashrc" ]; then
  source "/etc/bash.bashrc"
fi

alias private='source "$HOME/.bashrc.private"'

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
alias c.='cd ..'
alias c-='cd -'

alias chmox='chmod +x'
alias rgrep='grep -r'
alias diff='diff -u'
alias less=$PAGER # don't use .lesskey, it screws your git paging/coloring!

alias dmp='vim ~/junk/dmp'
alias golf='vim ~/junk/golf'
alias sql='vim ~/junk/dmp.sql'

alias sshd='ssh doc'
alias ssht='ssh tigris'

alias be='bundle exec'
alias bi='bundle install'
alias bu='bundle update'
alias ber='bundle exec rake'
alias bera='bundle exec rubocop -a'
alias my='mysql -u root'

# Git stuff cos I'm lazier than a sloth
alias git-cleanup-branches='for shit in `git branch | grep -v master`; do git branch -d $shit; done'
alias gp='git pull --rebase'
alias gpush='git push'
alias gr='git rebase'
alias gs='git status'
alias gd='git diff'
alias gdc='git diff --cached'
alias ga='git add'
alias gc='git commit'
alias realowner="git log | grep Author | cut -d':' -f2 | cut -d'<' -f1 | sort | uniq -c | sort -rn | head -n1"

# docker docker docker
alias d='docker'

alias dcu='docker-compose up --abort-on-container-exit --build'
alias dcd='docker-compose down'
alias dcr='docker-compose run --rm'

alias ack='ag'

export SHORT_HOSTNAME=`hostname -s`
if [ -f "$HOME/.bash/host/$SHORT_HOSTNAME" ]; then
  source "$HOME/.bash/host/$SHORT_HOSTNAME"
fi

if [ -f "$HOME/.bash/term/$TERM" ]; then
  source "$HOME/.bash/term/$TERM"
fi

DISTRO=`uname`
if [ -f "$HOME/.bash/distro/$DISTRO" ]; then
  source "$HOME/.bash/distro/$DISTRO"
fi

if [ `which vim` ]; then
  alias vi='vim'
  export EDITOR="vim"
else
  export EDITOR="vi"
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

if [ -e /etc/profile.d/chruby.sh ]; then
  source /etc/profile.d/chruby.sh
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

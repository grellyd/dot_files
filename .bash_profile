# /etc/skel/.bash_profile

# Start x automatically from the Gentoo wiki
if [[ -z $DISPLAY ]] && [[ $(tty) = /dev/tty1 ]]; then exec startx; fi

# This file is sourced by bash for login shells.  The following line
# runs your .bashrc and is recommended by the bash info pages.
if [[ -f ~/.bashrc ]] ; then
	. ~/.bashrc
fi

function parse_git_branch {
git branch --no-color 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/'
}

function active_docker_machine {
result=${PWD##*/}
if [ $result = "op-scim" ]; then
    echo " *$DOCKER_MACHINE_NAME*"
elif [ "$DOCKER_MACHINE_NAME" != "" ]; then
    echo " *$DOCKER_MACHINE_NAME*"
fi
}

if [ -f ~/scripts/git-completion.bash ]; then
  . ~/scripts/git-completion.bash
fi

BASH_RED="\033[01;31m\]"
BASH_GREEN="\033[01;32m\]"
BASH_YELLOW="\033[01;33m\]"
BASH_BLUE="\033[01;34m\]"
BASH_PURPLE="\033[01;35m\]"

export PS1="\[$BASH_GREEN\u@\h:\[$BASH_BLUE\$(parse_git_branch)\[$BASH_RED\$(active_docker_machine) \[$BASH_PURPLE\w \[$BASH_BLUE\n>\[\e[0m\]"
#export LANG=en_US.UTF-8

PATH="/usr/local/heroku/bin:$PATH"
PATH="/usr/local/android-studio/bin:$PATH"
PATH="/usr/local/Telegram:$PATH"
#PATH="/usr/local/go/bin:$PATH"
PATH="/usr/local/lib/nodejs/node-v10.15.3-linux-x64/bin:$PATH"
PATH="/usr/local/lib/yarn/yarn-v1.15.2/bin:$PATH"
PATH="/usr/local/lib/redis/redis-5.0.4/src:$PATH"
PATH="/usr/local/lib/jq/jq-1.6:$PATH"
PATH="/usr/local/lib/tslint/tslint-5.16.0/bin:$PATH"
PATH="/usr/local/lib/op:$PATH"
PATH="~/.local/bin:$PATH"
PATH="/home/grellyd/uni/fifth_year/cpsc_416/ass/proj2/go/bin:$PATH"
PATH="/home/grellyd/projects/go/bin:$PATH"
PATH="/usr/local/google-cloud-sdk/bin:$PATH"
PATH="/usr/local/share/zoom/:$PATH"
PATH="/usr/local/lib/postman/postman-7.0.9:$PATH"
PATH="/home/grellyd/wrk/go/bin:$PATH"


export EDITOR="/usr/bin/vim"
export APIARY_API_KEY='9d85a873a4d36679717bdf4a68811fa1'
#export GOPATH="/home/grellyd/projects/go:/home/grellyd/wrk/go"
export GOPATH="/home/grellyd/wrk/go"
# Multiple Monitors Toggle
export MONITOR=false

alias ls='ls --group-directories-first --color=always'
alias cls="echo -ne '\033c'"
alias sleep="~/scripts/sleep.sh"
alias lock="~/scripts/lock_screen.sh"
alias here="urxvt &"
alias workup="~/scripts/workup.sh"
alias workdown="~/scripts/workdown.sh"

export GOOGLE_APPLICATION_CREDENTIALS="/home/grellyd/.config/gcloud/application_default_credentials.json"

export PATH=$PATH:/home/grellyd/lib/azure-cli

source '/home/grellyd/lib/azure-cli/az.completion'

export PATH="$HOME/.cargo/bin:$PATH"

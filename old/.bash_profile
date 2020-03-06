function parse_git_branch {
git branch --no-color 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/'
}

export PS1="\[\033[11;32m\]\u@\h:\[\033[01;35m\]\$(parse_git_branch) \[\033[11;34m\]\w \[\033[01;34m\]\n>\[\e[0m\]"
alias ls="gls --group-directories-first --color=always"
alias vim='/Applications/MacVim.app/Contents/MacOS/Vim'
alias python='python3'
PATH="/Library/Frameworks/Python.framework/Versions/3.6/bin:${PATH}"
PATH="/usr/local/sbin:$PATH"
export PATH

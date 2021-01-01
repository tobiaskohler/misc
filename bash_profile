export CLICOLOR=1

alias ..='cd ..'
alias ls='ls -la --color=auto'


export PS1="\[\033[38;5;11m\]\u\[$(tput sgr0)\]@\h\[$(tput sgr0)\]\[\033[38;5;6m\][\w]\[$(tput sgr0)\]{\t}: \[$(tput sgr0)\]"

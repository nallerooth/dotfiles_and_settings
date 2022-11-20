export EDITOR=nvim

# SSH Agent
SSH_AUTH_SOCK="$XDG_RUNTIME_DIR/ssh-agent.socket"

# Development
export GOPATH=$HOME/code/go
export PATH=$PATH:$GOPATH/bin
export GPG_TTY=$(tty) # GPG signing git commits
export PATH=~/.npm-global/bin:$PATH

# JAVA
export _JAVA_OPTIONS='-Dawt.useSystemAAFontSettings=on -Dswing.aatext=true'

# Amiga development
export VBCC=$HOME/code/amiga_sdk/vbcc
export PATH=$PATH:$VBCC/bin
export NDK_INC=$HOME/code/amiga_sdk/NDK_INC/Include/include_h

# Aliases
alias sshnallerooth='ssh nalle@207.154.201.41'
alias r=ranger
alias hx=helix
alias phptest='composer exec "phpunit --color=always ."'

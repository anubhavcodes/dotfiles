# Enable Brew completions
if type brew &>/dev/null; then
  FPATH=$(brew --prefix)/share/zsh/site-functions:$FPATH

  autoload -Uz compinit
  compinit
fi

# Use this for autocompletions
autoload -Uz compinit && compinit

# Favourite aliases
alias watch="watch -n 2"

# Favourite git aliases
alias gs="git status"
alias gp="git push"

# Add brew's sbin to zshrc's PATH
PATH="/usr/local/sbin:$PATH"

# Set global gopath
export GOPATH=$HOME/projects/go

# Alias for granted.dev assume cli
alias assume="source assume"

# Make sure to use the latest openssl from brew
export LDFLAGS="-L/opt/homebrew/opt/openssl@3/lib"
export CPPFLAGS="-I/opt/homebrew/opt/openssl@3/include"
export PATH="/opt/homebrew/opt/openssl@3/bin:$PATH"

# Source 1passworld plugins
source /Users/anubhav/.config/op/plugins.sh

# Kubernetes goodies.
alias k=kubectl

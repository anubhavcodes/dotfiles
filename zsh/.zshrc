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
echo 'export PATH="/usr/local/sbin:$PATH"' >> ~/.zshrc

# Set global gopath
export GOPATH=$HOME/projects/go

# Alias for granted.dev assume cli
alias assume="source assume"

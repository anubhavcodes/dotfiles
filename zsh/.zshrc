# Enable direnv support
eval "$(direnv hook zsh)"

# Enable asdf integration
echo -e "\n. $(brew --prefix asdf)/asdf.sh" >> ${ZDOTDIR:-~}/.zshrc

# Enable Brew completions
if type brew &>/dev/null; then
  FPATH=$(brew --prefix)/share/zsh/site-functions:$FPATH

  autoload -Uz compinit
  compinit
fi

# Go related envs
export GOPATH=$(go env GOPATH)
export PATH=$PATH:$(go env GOPATH)/bin
export GOPRIVATE="github.com/Jimdo"

# Use this for autocompletions
autoload -Uz compinit && compinit

# Favourite aliases
alias watch="watch -n 2"
alias dc="docker-compose"
alias k="kubectl"
alias cat="bat"
alias cldns="sudo killall -HUP mDNSResponder"

# Favourite git aliases
alias gs="git status"
alias gp="git push"

# Starship prompt
# Must be at the end of zshrc
eval "$(starship init zsh)"


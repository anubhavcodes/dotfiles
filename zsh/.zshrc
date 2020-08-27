eval "$(direnv hook zsh)"
alias dc="docker-compose"
export GOPATH=$(go env GOPATH)
export PATH=$PATH:$(go env GOPATH)/bin
export GOPRIVATE="github.com/Jimdo"

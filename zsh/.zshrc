# Antigen
source /usr/local/share/antigen/antigen.zsh
antigen use oh-my-zsh
antigen bundle git
antigen bundle docker
antigen bundle docker-compose
antigen bundle comment-not-found
antigen bundle zsh-users/zsh-completions
antigen theme robbyrussell
antigen apply

# Syntax highlighting
source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# Aliases
alias ls='exa'
alias la='exa -al'

# Antigen
source /usr/local/share/antigen/antigen.zsh
antigen use oh-my-zsh
antigen bundle git
antigen bundle docker
antigen bundle docker-compose
antigen bundle aws
antigen bundle gcloud
antigen bundle comment-not-found
antigen bundle zsh-users/zsh-completions
antigen theme robbyrussell
antigen apply


# VI mode
bindkey -v
bindkey -M viins 'df' vi-cmd-mode
bindkey -M viins 'fd' vi-cmd-mode
bindkey -M viins -s 'jk' '\_'
bindkey -M viins -s 'kj' '\_'
bindkey -M vicmd -s 'H' '\^'
bindkey -M vicmd -s 'L' '\$'
zle-line-init() { echo -ne "\e[5 q" }
zle-line-finish() { echo -ne "\e[2 q" }
zle-keymap-select() {
  if [[ ${KEYMAP} == vicmd ]]; then
    echo -ne "\e[2 q"
  else
    echo -ne "\e[5 q"
  fi
}

# Aliases
alias ls='exa'
alias la='exa -al'


# Syntax highlighting
source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

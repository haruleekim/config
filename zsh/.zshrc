# Antigen
source /usr/local/share/antigen/antigen.zsh
antigen use oh-my-zsh
antigen bundle git
antigen bundle docker
antigen bundle docker-compose
antigen bundle comment-not-found
antigen theme robbyrussell
antigen apply

# Syntax highlighting
source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# Completion
if type brew &>/dev/null; then
    FPATH=$(brew --prefix)/share/zsh-completions:$FPATH
    FPATH=~/.zsh/completion:$FPATH
    autoload -Uz compinit
    compinit
fi

# Aliases
alias ls='exa'
alias la='exa -al'

# Python
export PATH="/usr/local/opt/python@3.8/bin:$PATH"
export PATH="/Users/haruleekim/Library/Python/3.8/bin:$PATH"
export PYTHON_INCLUDE_DIR=/usr/local/Cellar/python@3.8/3.8.2/Frameworks/Python.framework/Versions/3.8/include/python3.8
export PYTHON_LIBRARY=/usr/local/opt/python@3.8/Frameworks/Python.framework/Versions/3.8/lib

# Google Cloud SDK
source "/usr/local/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/path.zsh.inc"
source "/usr/local/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/completion.zsh.inc"

# FZF
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
export FZF_DEFAULT_COMMAND='fd --type f --hidden --follow --exclude .git --exclude .vim'

# Pyenv
if [ -d "${PYENV_ROOT}" ]; then
  export PATH=${PYENV_ROOT}/bin:${PYENV_ROOT}/shims:${PATH}
  eval "$(pyenv init -)"
  eval "$(pyenv virtualenv-init -)"
fi

# NVM
[ -s "/usr/local/opt/nvm/nvm.sh" ] && . "/usr/local/opt/nvm/nvm.sh"
[ -s "/usr/local/opt/nvm/etc/bash_completion.d/nvm" ] && . "/usr/local/opt/nvm/etc/bash_completion.d/nvm"

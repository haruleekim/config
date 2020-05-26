# Pyenv
#export PYENV_ROOT="${HOME}/.pyenv"
#if [ -d "${PYENV_ROOT}" ]; then
#  export PATH=${PYENV_ROOT}/bin:${PYENV_ROOT}/shims:${PATH}
#  eval "$(pyenv init -)"
#fi

# NVM
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"

# OpenSSL
export OPENSSL_ROOT_DIR=$(brew --prefix openssl)
export PATH="/usr/local/opt/openssl@1.1/bin:$PATH"

# Qt
export CMAKE_PREFIX_PATH=$CMAKE_PREFIX_PATH:/usr/local/opt/qt
export PATH=$PATH:/usr/local/opt/qt/bin

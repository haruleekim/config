SCRIPTPATH="$( cd "$(dirname "$0")" >/dev/null 2>&1 ; pwd -P )"

ln -s "$SCRIPTPATH/vim/.vimrc" "$HOME/.vimrc"
ln -s "$SCRIPTPATH/vim/.ideavimrc" "$HOME/.ideavimrc"
ln -s "$SCRIPTPATH/vim/.xvimrc" "$HOME/.xvimrc"

ln -s "$SCRIPTPATH/zsh/.zshrc" "$HOME/.zshrc"
ln -s "$SCRIPTPATH/zsh/.zprofile" "$HOME/.zprofile"
ln -s "$SCRIPTPATH/zsh/.zshenv" "$HOME/.zshenv"

ln -s "$SCRIPTPATH/git/.gitconfig" "$HOME/.gitconfig"

/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"

brew install exa
brew install zsh-syntax-highlighting
brew install nvm
brew install pyenv

ANTIGENPATH="/usr/local/share/antigen"
mkdir -p $ANTIGENPATH
curl -L git.io/antigen > "$ANTIGENPATH/antigen.zsh"

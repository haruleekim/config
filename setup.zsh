SCRIPT_PATH="$(cd "$(dirname "$0")" >/dev/null 2>&1; pwd -P)"

# Install Brew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
chmod -R 755 /usr/local/share

# Setup Z-Shell
ln -s "$SCRIPT_PATH/zshrc" "$HOME/.zshrc"
brew install zsh
brew install zsh-syntax-highlighting
# Use Antigen as the package manager of ZSH
ANTIGEN_PATH="/usr/local/share/antigen"
mkdir -p $ANTIGEN_PATH
curl -L git.io/antigen > "$ANTIGEN_PATH/antigen.zsh"
chsh -s "$(brew --prefix zsh)/bin/zsh"

# Install shell prompt (Starship)
brew install starship

# Install development environments
## Docker
brew install --cask docker
## Python
brew install python
brew install pipenv
## Node
brew install node
brew install yarn
## Rust
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -- -y
rustup toolchain install stable
rustup toolchain install nightly
## C & C++
brew install cmake

# Setup system utilities
brew install exa
brew install fd
brew install bat
brew install tokei
brew install ripgrep
brew install procs

# Setup Git
ln -s "$SCRIPT_PATH/gitconfig" "$HOME/.gitconfig"
brew install git

# Setup Vim
ln -s "$SCRIPT_PATH/vimrc" "$HOME/.vimrc"
ln -s "$SCRIPT_PATH/vimrc.keymap" "$HOME/.vimrc.keymap"
ln -s "$SCRIPT_PATH/ideavimrc" "$HOME/.ideavimrc"
brew install vim


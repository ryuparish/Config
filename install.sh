# MacOS installation script that I usually need to run everytime to get everything to work

# Install Homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# Install Neovim
brew install neovim
brew install ripgrep # dependency for text search and file search for nvim

# Install Tmuxinator
brew install tmuxinator

# Install conda using the official installation driver here:
# https://docs.conda.io/projects/conda/en/latest/user-guide/install/macos.html

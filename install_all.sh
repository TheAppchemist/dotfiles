#!/bin/bash

# Exit script on error
set -e

# --- Helper Functions ---
print_info() {
  echo "INFO: $1"
}

print_success() {
  echo "SUCCESS: $1"
}

print_warning() {
  echo "WARNING: $1"
}

# --- Install Homebrew (if not installed) ---
if ! command -v brew &> /dev/null; then
  print_info "Homebrew not found. Installing Homebrew..."
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
  print_success "Homebrew installed."
else
  print_info "Homebrew is already installed."
fi


# --- Install Packages with Homebrew ---
packages=(
  neovim
  vim
  curl
  fzf
  ripgrep
  fd
)

print_info "Installing packages with Homebrew: ${packages[*]}..."
for package in "${packages[@]}"; do
  if brew list --formula | grep -q "^${package}$"; then
    print_info "${package} is already installed. Skipping."
  else
    brew install "$package"
    print_success "Installed ${package}."
  fi
done

# --- Install nvm ---
print_info "Installing nvm..."
if [ -s "$NVM_DIR/nvm.sh" ]; then
  print_info "nvm is already installed. Skipping."
else
  curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.7/install.sh | bash
  print_success "nvm installed. Please restart your shell or source your profile to use it."
fi


# --- Install LazyVim ---
print_info "Installing LazyVim..."

if [ -d "$HOME/.config/nvim" ]; then
    print_warning "Backing up existing Neovim configuration..."
    mv ~/.config/nvim ~/.config/nvim.bak
    mv ~/.local/share/nvim ~/.local/share/nvim.bak
    mv ~/.local/state/nvim ~/.local/state/nvim.bak
    mv ~/.cache/nvim ~/.cache/nvim.bak
    print_success "Backup complete."
fi

print_info "Cloning LazyVim starter..."
git clone https://github.com/LazyVim/starter ~/.config/nvim
print_success "LazyVim installed."

print_success "All applications installed successfully!"

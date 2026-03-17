# Installation Guide

This guide provides instructions for installing a set of development tools.

## Prerequisites

These instructions assume you are using macOS and have [Homebrew](httpss://brew.sh/) installed.

## Applications

- [Neovim](httpss://neovim.io/)
- [Vim](httpss://www.vim.org/)
- [curl](httpss://curl.se/)
- [LazyVim](httpss://www.lazyvim.org/)
- [fzf](httpss://github.com/junegunn/fzf)
- [ripgrep](httpss://github.com/BurntSushi/ripgrep)
- [fd](httpss://github.com/sharkdp/fd)
- [nvm](httpss://github.com/nvm-sh/nvm)

## Installation

You can either install all applications at once using the script or follow the individual installation instructions.

### Install All

To install all the applications, run the following script:

```bash
./install_all.sh
```

### Individual Installation

<details>
<summary>Neovim</summary>

```bash
brew install neovim
```

</details>

<details>
<summary>Vim</summary>

```bash
brew install vim
```

</details>

<details>
<summary>curl</summary>

```bash
brew install curl
```

</details>

<details>
<summary>LazyVim</summary>

**Prerequisites:**
- Neovim >= 0.9.0
- Git >= 2.19.0

```bash
# required
mv ~/.config/nvim{,.bak}

# optional but recommended
mv ~/.local/share/nvim{,.bak}
mv ~/.local/state/nvim{,.bak}
mv ~/.cache/nvim{,.bak}

git clone https://github.com/LazyVim/starter ~/.config/nvim

# For Neovim < 0.9.0
# git clone --branch=v0.8.0 https://github.com/LazyVim/starter ~/.config/nvim
```

</details>

<details>
<summary>fzf</summary>

```bash
brew install fzf
```

</details>

<details>
<summary>ripgrep</summary>

```bash
brew install ripgrep
```

</details>

<details>
<summary>fd</summary>

```bash
brew install fd
```

</details>

<details>
<summary>nvm</summary>

```bash
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.7/install.sh | bash
```

</details>

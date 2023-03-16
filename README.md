# Neovim Configuration

This repository contains my configuration files for Neovim, which include my preferred plugins and keybinds.

## Installation

### Windows

1. Install Neovim using Chocolatey package manager by running the following command in an elevated PowerShell session:

    ```
    choco install neovim
    ```

2. Clone this repository into the following directory:

    ```
    C:\Users\<your_username>\AppData\Local\nvim\
    ```

3. Copy the `init.vim` and `coc-settings.json` files from the cloned repository to the following directory:

    ```
    C:\Users\<your_username>\AppData\Local\nvim\
    ```

### Linux and macOS

1. Install Neovim using your package manager:

   - Debian/Ubuntu: `sudo apt-get install neovim`
   - macOS: `brew install neovim`

2. Clone this repository to your home directory:

    ```
    git clone https://github.com/<your_username>/<repository>.git ~/nvim-config
    ```

3. Copy the `init.vim` and `coc-settings.json` files from the cloned repository to the following directory:

   - Linux: `~/.config/nvim/`
   - macOS: `~/.config/nvim/`

## Plugins

This configuration uses the following plugins:

- [Nerdtree](https://github.com/preservim/nerdtree): A file explorer for Vim
- [Lualine](https://github.com/hoob3rt/lualine.nvim): A fast and customizable statusline for Vim
- [Treesitter](https://github.com/nvim-treesitter/nvim-treesitter): A parser generator for programming languages
- [Telescope](https://github.com/nvim-telescope/telescope.nvim): A highly extensible fuzzy finder for Vim
- [Harpoon](https://github.com/ThePrimeagen/harpoon): A set of keybindings to help navigate between files
- [Undotree](https://github.com/mbbill/undotree): A visualizer for undo history tree
- [Fugitive](https://github.com/tpope/vim-fugitive): A Git wrapper for Vim
- [LSP-Zero](https://github.com/creativenull/lsp-zero.nvim): A lightweight Language Server Protocol implementation for Neovim

### Lualine

[Lualine](https://github.com/hoob3rt/lualine.nvim) is a fast and customizable statusline for Vim that displays information such as the current file name, line number, and Git branch. Here are some of the keybinds for Lualine:

- `Ctrl + g`: Toggle the Git branch display
- `Ctrl + r`: Refresh the statusline

### Treesitter

[Treesitter](https://github.com/nvim-treesitter/nvim-treesitter) is a parser generator for programming languages that provides syntax highlighting, folding, and indentation. It also allows for more advanced features such as code highlighting and better code completion. Here are some of the keybinds for Treesitter:

- `:TSPlaygroundToggle`: Toggle the Treesitter Playground
- `:TSHighlightCapturesUnderCursor`: Show the syntax highlighting groups for the text under the cursor

### Telescope

[Telescope](https://github.com/nvim-telescope/telescope.nvim) is a highly extensible fuzzy finder for Vim that allows you to quickly search for files, buffers, and more. Here are some of the keybinds for Telescope:

- `Ctrl + p`: Open the Telescope prompt to search for files
- `Ctrl + b`: Open the Telescope prompt to search for buffers
- `Ctrl + g`: Open the Telescope prompt to search for Git files

### General Keybinds

Here are some of the most important Vim motion keybinds that are used in this configuration:

#### Navigation

- `Ctrl + w` + `h`: Move to the window on the left
- `Ctrl + w` + `l`: Move to the window on the right
- `Ctrl + w` + `j`: Move to the window below
- `Ctrl + w` + `k`: Move to the window above
- `Ctrl + o`: Move to the previous cursor position
- `Ctrl + i`: Move to the next cursor position

#### Editing

- `Ctrl + a`: Select all text in the buffer
- `Ctrl + x`: Cut selected text to system clipboard
- `Ctrl + c`: Copy selected text to system clipboard
- `Ctrl + v`: Paste text from system clipboard
- `Ctrl + s`: Save the current buffer
- `Ctrl + q`: Close the current buffer without saving

#### Search

- `Ctrl + p



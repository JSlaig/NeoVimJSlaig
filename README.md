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
    ~\AppData\Local\nvim\
    ```
    
    > **Note:** You may want to compile the plugins using `:PackerSync` command afterwards.

    
### Linux and macOS

1. Install Neovim using your package manager:

   - Debian/Ubuntu: `sudo apt-get install neovim`
   - macOS: `brew install neovim`

2. Clone this repository into the following directory:

   - Linux: `~/.config/nvim/`
   - macOS: `~/.config/nvim/`
   
   > **Note:** You may want to compile the plugins using `:PackerSync` command afterwards.

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
- [Dashboard](https://github.com/glepnir/dashboard-nvim): A customizable dashboard for Neovim
- [Tagbar](https://github.com/majutsushi/tagbar): A sidebar that displays tags generated from source code



## Keybinds

### General Keybinds

Here are some of the most important Vim motion keybinds that are used in this configuration:

#### Navigation

- `Ctrl + w` + `h`: Move to the window on the left
- `Ctrl + w` + `l`: Move to the window on the right
- `Ctrl + w` + `j`: Move to the window below
- `Ctrl + w` + `k`: Move to the window above
- `Ctrl + o`: Move to the previous cursor position
- `Ctrl + i`: Move to the next cursor position


- `Ctrl + h`: Move to the start of the line
- `Ctrl + l`: Move to the end of the line
- `Ctrl + j`: Move to the end of the file
- `Ctrl + k`: Move to the start of the file
    > **Note:** These work either in normal and visual mode.



#### Editing

- `x`: Cut selected text to system clipboard
- `xx`: Cut selected line to system clipboard
- `c`: Copy selected text to system clipboard
- `cc`: Copy current line to system clipboard
- `p`: Paste text from system clipboard
- `r`: To redo changes
- `u`: To undo changes

### Plugin keybinds & functions


#### Treesitter

- `:TSPlaygroundToggle`: Toggle the Treesitter Playground
- `:TSHighlightCapturesUnderCursor`: Show the syntax highlighting groups for the text under the cursor

#### Telescope

- `Ctrl + o`: Open the Telescope prompt to search for all files
- `Ctrl + p`: Open the Telescope prompt to use live-grep on files
   > **Note:** You need to install some dependencies with a package manager such as apt, chocolatey or brew.
   > **Note:** Dependencies are: **fd** and **ripgrep**.

#### Harpoon

- `<leader> + h`: Open Harpoon menu
- `<leader> + a`: Add file to Harpoon
- `<leader> + j`: Navigate to next "Harpooned" file
- `<leader> + k`: Navigate to previous "Harpooned" file
- `<leader> + 1-4`: Navigate to the "n Harpooned" file

#### Tagbar

- `Ctrl + b`: Toggle tagbar menu









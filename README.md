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

3. Need to install dependencies
    
    - FD: `winget install sharkdp.fd`
    > **Note:** If you want to check the right package with winget just use `winget search -q fd`
    
    - Ripgrep: `winget install BurntSushi.ripgrep.MSVC`
    > **Note:** Not sure this is the one, with the same query format from previous one can check the other possible install

    - Mingw: `choco install mingw`
    > **Note:** Use elevated rights powershell

    - Ctags: `choco install ctags`
    > **Note:** Almost forgot about this one

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
- [LSP-Zero](https://github.com/creativenull/lsp-zero.nvim): A lightweight Language Server Protocol implementation for Neovim
- [Dashboard](https://github.com/glepnir/dashboard-nvim): A customizable dashboard for Neovim
- [Tagbar](https://github.com/majutsushi/tagbar): A sidebar that displays tags generated from source code
- [ToggleTerm](https://github.com/akinsho/toggleterm): A floating terminal
- [Vimcaps](https://github.com/suxpert/vimcaps): Remove CapsLock when on normal mode
- [Leap](https://github.com/rubberydub/leap.vim): A visual mode motion plugin
- [Oil](https://github.com/getzola/oil.nvim): A file explorer as a buffer
- [Vs Tasks](https://github.com/lfv89/vs-tasks.nvim): Run visual studio tasks.json files


## Keybinds

### General Keybinds

Here are some of the most important Vim motion keybinds that are used in this configuration:

#### Navigation

- `<leader>` + `t`: Move to the window on the left
- `<leader>` + `y`: Move to the window on the right
- `<leader>` + `vt`: Move to the window above
- `<leader>` + `vy`: Move to the window below



- `Ctrl + o`: Move to the previous cursor position
- `Ctrl + i`: Move to the next cursor position
- `Ctrl + h`: Move to the start of the line
- `Ctrl + l`: Move to the end of the line
- `Ctrl + j`: Move to the end of the file
- `Ctrl + k`: Move to the start of the file
    > **Note:** These work either in normal and visual mode.



#### Editing

- `d`: Delete selected text to system clipboard
- `dd`: Delete whole line
- `x`: Cut selected text to system clipboard
- `xx`: Cut selected line to system clipboard
- `c`: Copy selected text to system clipboard
- `cc`: Copy current line to system clipboard
- `p`: Paste text from system clipboard
- `r`: To redo changes
- `u`: To undo changes
- `<leader>/r`: To quickly enter replace all mode
    > **Note:** In order to be case sensitive you need to use **/I** after
    >           **Example**: ":%s/foo/bar/I"

### Plugin keybinds & functions


#### Treesitter

- `:TSPlaygroundToggle`: Toggle the Treesitter Playground
- `:TSHighlightCapturesUnderCursor`: Show the syntax highlighting groups for the text under the cursor

#### Fzf

- `<leader> + ff`: Open the Telescope prompt to search for all files
- `<leader> + fg`: Open the Telescope prompt to use live-grep on files
- `<leader> + sff`: Open the Telescope prompt to use search for all files and open them on a split window
- `<leader> + sfg`: Open the Telescope prompt to use live-grep on files and open them on a split window
   > **Note:** You need to install some dependencies with a package manager such as apt, chocolatey or brew.
   > **Note:** Dependencies are: **fd** and **ripgrep**.

#### Harpoon

- `<leader> + h`: Open Harpoon menu
- `<leader> + a`: Add file to Harpoon
- `<leader> + j`: Navigate to next "Harpooned" file
- `<leader> + k`: Navigate to previous "Harpooned" file
- `<leader> + 1-4`: Navigate to the "n Harpooned" file

#### Buffer Manager

- `<leader> + buf`: Toggle Buffer Manager menu

#### Vs Tasks

- `<leader> + bt`: Open menu to read and run .vscode/tasks.json
  > **Note:** This is a plugin that lets you run visual studio config fileso
  
#### Tagbar

- `<leader> + gb`: Toggle tagbar menu

#### Leap
- `s`: Forward search
- `m`: Backward search
  >**Note:** Real fun to use this to be honest

#### Oil
- `<leader>oil`: Open oil menu
  >**Note:** File manager as buffer

#### ToggleTerm

- `Ctrl + \`: Toggle floating terminal









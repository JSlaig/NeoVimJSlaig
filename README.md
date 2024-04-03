# Neovim Configuration

This repository contains my configuration files for Neovim, which include my preferred plugins and keybinds.

---

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
    
    > **Note:** You may want to manage the plugins using `:Lazy` command afterwards.

3. Need to install dependencies
    
    - FD: `winget install sharkdp.fd`
    > **Note:** If you want to check the right package with winget just use `winget search -q fd`
    
    - Ripgrep: `winget install BurntSushi.ripgrep.MSVC`
    > **Note:** Not sure this is the one, with the same query format from previous one can check the other possible install

    - Mingw: `choco install mingw`
    > **Note:** Use elevated rights powershell

### Linux and macOS

1. Install Neovim using your package manager:

   - Debian/Ubuntu: `sudo apt-get install neovim`
   - macOS: `brew install neovim`

2. Clone this repository into the following directory:

   - Linux: `~/.config/nvim/`
   - macOS: `~/.config/nvim/`
   
   > **Note:** You may want to manage the plugins using `:Lazy` command afterwards.

---

## Plugins

This configuration uses the following plugins:

### Appearance plugins
- [Catpuccin](https://github.com/catppuccin/nvim): Colorscheme currently used
- [Dashboard](https://github.com/glepnir/dashboard-nvim): Customizable dashboard for Neovim
- [Dressing](https://github.com/stevearc/dressing.nvim): Better UI for user input 
- [Lualine](https://github.com/hoob3rt/lualine.nvim): A fast and customizable statusline for Vim
- [Nvim-notify](https://github.com/rcarriga/nvim-notify): Wrapper for vim notifications

### Navigation plugins
- [Nvim-tree](https://github.com/nvim-tree/nvim-tree.lua): A file explorer for Vim
- [Telescope](https://github.com/nvim-telescope/telescope.nvim): A highly extensible fuzzy finder for Vim
- [Harpoon](https://github.com/ThePrimeagen/harpoon): A set of keybindings to help navigate between files
- [Leap](https://github.com/rubberydub/leap.vim): A visual mode motion plugin
- [Buffer-manager](https://github.com/j-morano/buffer_manager.nvim): Harpoon-like buffer manager 

### IDE
- [Treesitter](https://github.com/nvim-treesitter/nvim-treesitter): A parser generator for programming languages
- [Treesitter-textobjects](https://github.com/nvim-treesitter/nvim-treesitter-textobjects): Syntax aware text-objects, select, move, swap, and peek support.
- [Mason](https://github.com/williamboman/mason.nvim): Lsp, Linters, Dap and Formatters package manager plugin
- [Conform](https://github.com/stevearc/conform.nvim): Code formatter plugin
- [Nvim-lint](https://github.com/mfussenegger/nvim-lint): Code linter plugin 
- [Nvim-cmp](https://github.com/hrsh7th/nvim-cmp): Lsp completion engine plugin
- [Autopairs](https://github.com/windwp/nvim-autopairs): Auto-close tags plugin 

### Tools
- [Undotree](https://github.com/mbbill/undotree): A visualizer for undo history tree
- [ToggleTerm](https://github.com/akinsho/toggleterm): A floating terminal
- [Vimcaps](https://github.com/suxpert/vimcaps): Remove CapsLock when on normal mode
- [Vs-tasks](https://github.com/lfv89/vs-tasks.nvim): Run visual studio tasks.json files
- [Nvim-early-retirement](https://github.com/chrisgrieser/Nvim-early-retirement): Auto-closing buffers
- [Vim-commentary](https://github.com/tpope/Vim-commentary): Comment lines with `gcc` and visual-selected block with `gc`

---

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
- `[[`: Move to the end of the line
- `]]`: Move to the end of the file
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
- `:InspectTree`: Show the symbol highlighting tree for incremental selection of lexical nodes  

- `<C-s>`: Incremental search 

- `]f`: Jump to start of the next function 
- `]F`: Jump to end of the next function 
- `[f`: Jump to start of the prev function 
- `vaf`: Select around function
- `vif`: Select inside function

- `]i`: Jump to start of the next conditional 
- `]I`: Jump to end of the next conditional 
- `[i`: Jump to start of the prev conditional 
- `vai`: Select around conditional
- `vii`: Select inside conditional

- `]l`: Jump to start of the next loop 
- `]L`: Jump to end of the next loop 
- `[l`: Jump to start of the prev loop 
- `val`: Select around loop
- `vil`: Select inside loop

- `vr=`: Select right side of assignment
- `vl=`: Select left side of assignment

#### Telescope

- `<leader> + ff`: Open the Telescope prompt to search for all files
- `<leader> + fg`: Open the Telescope prompt to use live-grep on files
- `<leader> + fc`: Open the Telescope prompt to find string under cursor
   > **Note:** You need to install some dependencies with a package manager such as apt, chocolatey or brew.
   > **Note:** Dependencies are: **fd** and **ripgrep**.

- `<C-j>`: Navigate to the next file in the list
- `<C-k>`: Navigate to the prev file in the list

#### Harpoon

- `<leader> + h`: Open Harpoon menu
- `<leader> + a`: Add file to Harpoon
- `<leader> + j`: Navigate to next "Harpooned" file
- `<leader> + k`: Navigate to previous "Harpooned" file
- `<leader> + 1-9`: Navigate to the "n Harpooned" file

#### Buffer Manager

- `<leader> + buf`: Toggle Buffer Manager menu

#### Vs Tasks

- `<leader> + bt`: Open menu to read and run .vscode/tasks.json
  > **Note:** This is a plugin that lets you run visual studio config fileso
  
#### Leap
- `s`: Forward search
- `m`: Backward search
  >**Note:** Real fun to use this to be honest

#### ToggleTerm

- `Ctrl + \`: Toggle floating terminal









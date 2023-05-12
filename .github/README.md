# AstroNvim User Configuration

A user configuration template for [AstroNvim](https://github.com/AstroNvim/AstroNvim)

## Features

- File explorer with Neo-tree
- Autocompletion with Cmp
- Git integration with Gitsigns, vim-fugitive
- Statusline, Winbar, and Bufferline with Heirline
- Fuzzy finding with Telescope
- Syntax highlighting with Treesitter
- Formatting and Linting with Null-ls (eslint, prettier, etc)
- Language Server Protocol with Native LSP
- Debug Adapter Protocol with nvim-dap
- Custom mappings
- Mardown previews with [markdown-preview](https://github.com/iamcco/markdown-preview.nvim)
- Text editing features
  - Vim surround
- Harpoon
- Custom color scheme: [catpuccin](https://github.com/catppuccin/nvim)

## Requirements

- (Mac) Terminal with true colors support, e.g. [iTerm2](https://iterm2.com/)
- [Nerd Font](https://www.nerdfonts.com/font-downloads)
- Neovim 0.8+ (Not including nightly)
- [ripgrep](https://github.com/BurntSushi/ripgrep#installation) - live grep telescope search (<leader>fw)
- yarn ([markdown-preview](https://github.com/iamcco/markdown-preview.nvim))

## 🛠️ Installation

#### (Optional) Make a backup of your current nvim and shared folder

```shell
mv ~/.config/nvim ~/.config/nvim.bak
mv ~/.local/share/nvim ~/.local/share/nvim.bak
```

#### Clone AstroNvim

```shell
git clone --depth 1 https://github.com/AstroNvim/AstroNvim ~/.config/nvim
```

#### Clone this repository

```shell
git clone https://github.com/soutoner/astronvim-config ~/.config/astronvim/lua/user
```

Or link it

```shell
ln -s ~/astronvim-config ~/.config/astronvim/lua/user
```

#### Start Neovim

```shell
nvim
```

# Modern Development Environment

A carefully crafted development environment using Neovim and tmux with a focus on aesthetics and productivity.

## Features

### Tmux Configuration

- Catppuccin Macchiato theme for a clean, modern look
- Custom status bar with CPU usage indicator
- Vim-like keybindings and copy mode
- Intuitive window and pane management
- Mouse support enabled

### Neovim Configuration

- Lazy.nvim for efficient plugin management
- LSP integration with:
  - Autocompletion
  - Diagnostics
  - Code actions
  - Hover information
- Treesitter for enhanced syntax highlighting
- Telescope for fuzzy finding
- Git integration with Gitsigns
- Mini.nvim for essential utilities:
  - File explorer
  - Auto-pairs
  - Comments
  - Text objects
  - Easy text moving
- Catppuccin theme with transparent background
- Formatted with null-ls (prettier, stylua, black, etc.)
- Customized lualine status bar

## Installation

### Prerequisites

- Neovim >= 0.9.0 (recommended 0.10.0+ for best Treesitter support)
- tmux >= 3.0
- Git
- A Nerd Font (for icons)
- xsel (for tmux copy to clipboard)

### Setup

1. **Clone this repository**:
   ```bash
   git clone https://github.com/edgarsdikis/dotfiles.git ~/.config/
   ```

2. **Install tmux plugins**:
   ```bash
   mkdir -p ~/.config/tmux/plugins
   git clone https://github.com/catppuccin/tmux.git ~/.config/tmux/plugins/catppuccin
   git clone https://github.com/tmux-plugins/tmux-cpu.git ~/.config/tmux/plugins/tmux-cpu
   ```

3. **Install language servers**:
   After starting Neovim, run:
   ```
   :MasonInstall lua-language-server clangd typescript-language-server solargraph pyright
   ```

## Keybindings

### Tmux

| Key           | Action                     |
|---------------|----------------------------|
| `C-s`         | Prefix key                 |
| `Prefix + r`  | Reload tmux config         |
| `Prefix + h`  | Split window horizontally  |
| `Prefix + v`  | Split window vertically    |
| `Prefix + c`  | Enter copy mode            |
| `v` (in copy) | Begin selection            |
| `y` (in copy) | Copy selection to clipboard|

### Neovim

| Key           | Action                     |
|---------------|----------------------------|
| `Space`       | Leader key                 |
| `<C-p>`       | Find files (Telescope)     |
| `<leader>fg`  | Live grep (Telescope)      |
| `<C-n>`       | Open mini.files explorer   |
| `<leader>gf`  | Format file                |
| `<leader>gd`  | Go to definition           |
| `<leader>ca`  | Code actions               |
| `<leader>rn`  | Rename symbol              |
| `<leader>gr`  | Find references            |
| `<leader>d`   | Show diagnostics           |
| `K`           | Hover information          |
| `<C-arrows>`  | Move line/selection        |
| `<leader>tt`  | Toggle terminal            |
| `<leader>gg`  | Open LazyGit               |

## Plugins

### Core
- lazy.nvim - Plugin manager
- plenary.nvim - Lua functions library

### User Interface
- catppuccin - Main colorscheme
- lualine.nvim - Status line
- snacks.nvim - Dashboard, terminal, statuscolumn

### Editing
- mini.nvim - Collection of essential tools
  - mini.files - File explorer
  - mini.pairs - Auto-close brackets
  - mini.comment - Comment lines
  - mini.ai - Text objects
  - mini.surround - Surround actions
  - mini.move - Move text easily
  - mini.operators - Text operators
  - mini.indentscope - Indent guides
  - mini.notify - Notifications
  - mini.cursorword - Highlight word under cursor

### Development
- nvim-lspconfig - Language Server Protocol
- mason.nvim - LSP/DAP/Linter/Formatter manager
- mason-lspconfig.nvim - Mason LSP integration
- nvim-cmp - Completion engine
- LuaSnip - Snippet engine
- nvim-treesitter - Better syntax highlighting
- telescope.nvim - Fuzzy finder
- gitsigns.nvim - Git integration
- none-ls.nvim - Formatting and diagnostics
- live-preview.nvim - 
- debugprint.nvim - 

## Customization

### Changing the Theme

Edit `nvim/lua/plugins/catppuccin.lua` to change the flavor:
```lua
opts = {
  flavor = "macchiato", -- Options: latte, frappe, macchiato, mocha
}
```

For tmux, edit `.tmux.conf`:
```
set -g @catppuccin_flavor "macchiato" # Options: latte, frappe, macchiato, mocha
```

### Adding LSP Servers

Edit `nvim/lua/plugins/lsp-config.lua` and add your desired server:
```lua
lspconfig.your_language_server.setup({
  capabilities = capabilities,
})
```

## Troubleshooting

### Common Issues

1. **Icons not displaying**: Ensure you have installed a Nerd Font and your terminal is using it.

2. **Copy not working in tmux**: Ensure xsel is installed.

3. **Plugins not loading**: Run `:Lazy sync` in Neovim to update plugins.

## Maintenance

- Update Neovim plugins: `:Lazy update`
- Update language servers: `:MasonUpdate`
- Update tmux plugins: Manually pull updates from respective repositories

## Resources

- [Neovim Documentation](https://neovim.io/doc/)
- [Tmux Documentation](https://github.com/tmux/tmux/wiki)
- [Lazy.nvim](https://github.com/folke/lazy.nvim)
- [Catppuccin Theme](https://github.com/catppuccin/catppuccin)

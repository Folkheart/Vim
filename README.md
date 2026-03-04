# Neovim config for VSCode Neovim

This repository now includes an `init.lua` tuned for the [VSCode Neovim](https://github.com/vscode-neovim/vscode-neovim) extension.

## Install

1. Install the **VSCode Neovim** extension.
2. Point VS Code to this config:

```json
{
  "vscode-neovim.neovimInitVimPaths.linux": "/workspace/Vim/init.lua"
}
```

3. Reload VS Code.

## What is included

- Safe defaults that behave well in VS Code and plain Neovim.
- VS Code action mappings for file search, references, diagnostics, rename, and editor focus.
- A fallback section for normal Neovim (outside VS Code).

## Main keymaps in VS Code

- `<leader>ff`: Quick file open
- `<leader>fg`: Find in files
- `gd`, `gr`, `gI`: definition/references/implementation
- `<leader>rn`: rename symbol
- `[d` / `]d`: previous/next diagnostic
- `<C-h/j/k/l>`: move between VS Code editor groups

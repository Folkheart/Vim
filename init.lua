local is_vscode = vim.g.vscode ~= nil

vim.g.mapleader = " "
vim.g.maplocalleader = " "

local opt = vim.opt
opt.number = true
opt.relativenumber = true
opt.ignorecase = true
opt.smartcase = true
opt.hlsearch = false
opt.incsearch = true
opt.termguicolors = true
opt.signcolumn = "yes"
opt.cursorline = true
opt.scrolloff = 8
opt.sidescrolloff = 8
opt.updatetime = 250
opt.timeoutlen = 400
opt.splitbelow = true
opt.splitright = true
opt.wrap = false
opt.clipboard = "unnamedplus"

local map = vim.keymap.set

map({ "n", "v" }, "<Space>", "<Nop>", { silent = true })
map("n", "<leader>w", "<cmd>w<cr>", { desc = "Write file" })
map("n", "<leader>q", "<cmd>q<cr>", { desc = "Quit window" })
map("n", "<Esc>", "<cmd>nohlsearch<cr>", { desc = "Clear search highlight" })

if is_vscode then
  local vscode = vim.fn.VSCodeNotify

  map("n", "<leader>ff", function()
    vscode("workbench.action.quickOpen")
  end, { desc = "Find files (VS Code)" })

  map("n", "<leader>fg", function()
    vscode("workbench.action.findInFiles")
  end, { desc = "Find in files (VS Code)" })

  map("n", "<leader>e", function()
    vscode("workbench.view.explorer")
  end, { desc = "Explorer" })

  map("n", "<leader>ca", function()
    vscode("editor.action.quickFix")
  end, { desc = "Code actions" })

  map("n", "gd", function()
    vscode("editor.action.revealDefinition")
  end, { desc = "Go to definition" })

  map("n", "gr", function()
    vscode("editor.action.goToReferences")
  end, { desc = "Go to references" })

  map("n", "gI", function()
    vscode("editor.action.goToImplementation")
  end, { desc = "Go to implementation" })

  map("n", "K", function()
    vscode("editor.action.showHover")
  end, { desc = "Hover" })

  map("n", "<leader>rn", function()
    vscode("editor.action.rename")
  end, { desc = "Rename symbol" })

  map("n", "[d", function()
    vscode("editor.action.marker.prev")
  end, { desc = "Previous diagnostic" })

  map("n", "]d", function()
    vscode("editor.action.marker.next")
  end, { desc = "Next diagnostic" })

  map("n", "<C-h>", function()
    vscode("workbench.action.focusLeftGroup")
  end, { desc = "Focus left editor" })

  map("n", "<C-l>", function()
    vscode("workbench.action.focusRightGroup")
  end, { desc = "Focus right editor" })

  map("n", "<C-k>", function()
    vscode("workbench.action.focusAboveGroup")
  end, { desc = "Focus upper editor" })

  map("n", "<C-j>", function()
    vscode("workbench.action.focusBelowGroup")
  end, { desc = "Focus lower editor" })

  return
end

map("n", "<leader>h", "<C-w>h", { desc = "Move to left split" })
map("n", "<leader>j", "<C-w>j", { desc = "Move to lower split" })
map("n", "<leader>k", "<C-w>k", { desc = "Move to upper split" })
map("n", "<leader>l", "<C-w>l", { desc = "Move to right split" })

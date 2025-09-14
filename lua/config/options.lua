-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

-- line number
vim.opt.relativenumber = true
vim.opt.number = true

-- indentation
vim.opt.shiftwidth = 4
vim.opt.tabstop = 4
vim.opt.softtabstop = 4 -- number of spaces to insert or delete when hitting Tab or Backspace
vim.opt.expandtab = true -- convert tabs to space
vim.opt.autoindent = true -- automatically adjust indentation for new lines
vim.opt.smartindent = true
vim.opt.smarttab = true
vim.opt.cindent = true
vim.opt.copyindent = true

vim.opt.cursorline = true

vim.opt.mouse:append("a")

-- search
vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.hlsearch = true -- highlight

vim.opt.termguicolors = true

-- space rendering
vim.opt.listchars = { trail = "·" }
vim.opt.list = true

-- use system clipboard
vim.opt.clipboard:append({ "unnamedplus" })

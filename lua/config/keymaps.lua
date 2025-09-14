-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

vim.keymap.set("i", "jk", "<Esc>", { silent = true, noremap = true })
vim.keymap.set("n", "Y", "y$", { desc = "Yank to end of the line" })

vim.g.mapleader = " "

local keymap = vim.keymap

---------- Keycode Reference (MacOS) ----------
--- <CR>, <Enter>, <Return>: Return/Enter
--- <S-...>: Shift
--- <C-...>: Control
--- <M-...>, <A-...>: Option
--- <D-...>: Command

---------- Insertion Mode ----------
keymap.set("i", "jk", "<Esc>")
keymap.set("i", "<C-BS>", "<C-W>", { noremap = true, silent = true })

---------- Normal Mode ----------
keymap.set("n", "j", "gj")
keymap.set("n", "k", "gk")
-- split windows
keymap.set("n", "<leader>sv", "<C-w>v")
keymap.set("n", "<leader>sh", "<C-w>s")

-- turn off highlights
keymap.set("n", "<leader>nh", ":nohl<CR>")

-- move between panels
keymap.set("n", "<C-j>", "<C-w>j", { noremap = true, silent = true })
keymap.set("n", "<C-h>", "<C-w>h", { noremap = true, silent = true })
keymap.set("n", "<C-k>", "<C-w>k", { noremap = true, silent = true })
keymap.set("n", "<C-l>", "<C-w>l", { noremap = true, silent = true })

-- quit all
keymap.set("n", "<leader>qq", "<cmd>confirm qa<CR>", { noremap = true, silent = true, desc = "Quit all" })

--keymap.set("n", "j", [[v:count ? 'j' : 'gj']], { noremap = true, silent = true })
--keymap.set("n", "k", [[v:count ? 'k' : 'gk']], { noremap = true, silent = true })
---------- Visual Mode ----------
-- move lines
keymap.set("v", "J", ":m '>+1<CR>gv=gv")
keymap.set("v", "K", ":m '<-2<CR>gv=gv")

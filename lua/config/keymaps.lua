-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
vim.keymap.del("t", "<C-h>", { desc = "Go to left window" })
vim.keymap.del("t", "<C-j>", { desc = "Go to lower window" })
vim.keymap.del("t", "<C-k>", { desc = "Go to upper window" })
vim.keymap.del("t", "<C-l>", { desc = "Go to right window" })

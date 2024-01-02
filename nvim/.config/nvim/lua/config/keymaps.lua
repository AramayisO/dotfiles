local telescope = require("telescope.builtin")

-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
vim.keymap.set("n", "<leader>Q", ":confirm qa<CR>", { desc = "Quit all tabs", noremap = true })
vim.keymap.set("n", "<leader>fh", telescope.help_tags, { desc = "Find help tags", noremap = true })

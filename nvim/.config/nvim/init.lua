-- Set directory for swap files
vim.o.directory = '/tmp/nvim/swap/'

-- Set leader key
vim.g.mapleader = " "

-- Convert tabs to spaces
vim.o.tabstop = 4
vim.o.shiftwidth = 4
vim.o.softtabstop = 4
vim.o.expandtab = true

-- Don't expand tabs for Makefiles
vim.cmd([[ autocmd FileType make setlocal noexpandtab ]])

-- Turn on line numbers
vim.o.number = true

function toggleLineNumbers()
    vim.o.number = not vim.o.number
end

function toggleRelativeLineNumbers()
    vim.o.relativenumber = not vim.o.relativenumber
end

vim.keymap.set('n', '<Leader>n', toggleLineNumbers)
vim.keymap.set('n', '<Leader>r', toggleRelativeLineNumbers)

-- Set split directions
vim.o.splitbelow = true
vim.o.splitright = true

-- Highlight line
vim.opt.cursorline = true

local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({}, {})

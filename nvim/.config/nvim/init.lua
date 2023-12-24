-- Set directory for swap files
vim.o.directory = '/tmp/nvim/swap/'

-- Convert tabs to spaces
vim.o.tabstop = 4
vim.o.shiftwidth = 4
vim.o.softtabstop = 4
vim.o.expandtab = true

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

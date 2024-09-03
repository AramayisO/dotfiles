-- Theme
vim.cmd("colorscheme flow")

-- Only show one status line for all splits
vim.opt.laststatus=3

-- Default split directions
vim.opt.splitright = true
vim.opt.splitbelow = true

-- Set tabs to 4 spaces
vim.opt.expandtab = true
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4

-- Auto indent new lines
vim.opt.autoindent = true
vim.opt.smartindent = true

-- Show line numbers
vim.opt.number = true
vim.opt.relativenumber = true

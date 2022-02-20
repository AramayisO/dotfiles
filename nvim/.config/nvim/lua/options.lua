-- Enable line numbering
vim.opt.number = true

-- Convert tabs to spaces
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

-- Don't expand tabs for Makefiles
vim.cmd([[ autocmd FileType make setlocal noexpandtab ]])

-- Set split directions
vim.opt.splitbelow = true
vim.opt.splitright = true

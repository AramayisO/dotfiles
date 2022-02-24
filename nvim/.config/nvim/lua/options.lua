-- Enable line numbering
vim.opt.number = true

-- Enable 24-bit colors (required for color shceme and other plugins).
vim.opt.termguicolors = true

-- Set color scheme
--vim.cmd([[ autocmd vimenter * ++nested colorscheme gruvbox ]])
vim.cmd([[ colorscheme onedark ]])

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

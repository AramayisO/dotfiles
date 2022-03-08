-- Enable line numbering
vim.opt.number = true

-- Set color scheme
vim.opt.termguicolors = true
vim.opt.background = 'dark'
vim.cmd([[ 
    let g:gruvbox_material_enable_bold = 1
    let g:gruvbox_material_enable_italic = 1
    let g:gruvbox_material_transparent_background = 1
    let g:gruvbox_material_diagnostic_virtual_text = 'colored'
    let g:gruvbox_material_better_performance = 1
    let g:gruvbox_material_palette = 'material'
    colorscheme gruvbox-material
]])

-- Highlight line
vim.opt.cursorline = true

-- Convert tabs to spaces
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.autoindent = true
vim.opt.smartindent = true

-- Don't expand tabs for Makefiles
vim.cmd([[ autocmd FileType make setlocal noexpandtab ]])

-- Set split directions
vim.opt.splitbelow = true
vim.opt.splitright = true

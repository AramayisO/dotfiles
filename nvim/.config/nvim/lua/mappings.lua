-- Save and quit
vim.api.nvim_set_keymap('n', '<c-s>', ':w<cr>', { noremap = true })
vim.api.nvim_set_keymap('n', '<c-q>', ':q<cr>', { noremap = true })

-- Moving between splits
vim.api.nvim_set_keymap('n', '<c-h>', '<c-w>h', { noremap = true })
vim.api.nvim_set_keymap('n', '<c-j>', '<c-w>j', { noremap = true })
vim.api.nvim_set_keymap('n', '<c-k>', '<c-w>k', { noremap = true })
vim.api.nvim_set_keymap('n', '<c-l>', '<c-w>l', { noremap = true })

-- Telescope (fuzzy finder)
vim.api.nvim_set_keymap('n', '<leader>ff', '<cmd>Telescope find_files<cr>', { noremap = true })
vim.api.nvim_set_keymap('n', '<leader>fg', '<cmd>Telescope live_grep<cr>', { noremap = true })
vim.api.nvim_set_keymap('n', '<leader>fb', '<cmd>Telescope buffers<cr>', { noremap = true })
vim.api.nvim_set_keymap('n', '<leader>fh', '<cmd>Telescope help_tags<cr>', { noremap = true })
vim.api.nvim_set_keymap('n', '<leader>cbff', '<cmd>Telescope current_buffer_fuzzy_find<cr>', { noremap = true })

-- Nvim-Tree (file explorer)
vim.api.nvim_set_keymap('n', '<c-n>', '<cmd>NvimTreeToggle<cr>', { noremap = true }) 
vim.api.nvim_set_keymap('n', '<leader>rn', '<cmd>NvimTreeRefresh<cr>', { noremap = true }) 
vim.api.nvim_set_keymap('n', '<leader>fn', '<cmd>NvimTreeFindFile<cr>', { noremap = true }) 

local telescope_builtins = require("telescope.builtin")

-- Telescope keymaps
vim.keymap.set("n", "<leader>ff", telescope_builtins.find_files, { noremap = true, silent = true, desc = "find files" })
vim.keymap.set("n", "<leader>fg", telescope_builtins.live_grep, { noremap = true, silent = true, desc = "live grep" })
vim.keymap.set("n", "<leader>fb", telescope_builtins.buffers, { noremap = true, silent = true, desc = "buffers" })
vim.keymap.set("n", "<leader>fh", telescope_builtins.help_tags, { noremap = true, silent = true, desc = "help tags" })
vim.keymap.set("n", "<leader>fs", telescope_builtins.grep_string, { noremap = true, silent = true, desc = "grep string" })
vim.keymap.set("n", "<leader>/", telescope_builtins.current_buffer_fuzzy_find, { noremap = true, silent = true, desc = "fuzzy find (current buffer)" })

require("config")
require("plugins")

-- Don't expand tabs for Makefiles
vim.cmd([[ autocmd FileType make setlocal noexpandtab ]])


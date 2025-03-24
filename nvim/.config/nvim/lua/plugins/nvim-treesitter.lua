return {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",                    -- ensure parsers in `ensure_installed` are updated any time plugin is installed or updated
    event = { "BufReadPre", "BufNewFile" }, -- only need treesitter when opening a buffer for an existing or new file
    config = function()
        local treesitter = require("nvim-treesitter.configs")

        treesitter.setup({
            -- A list of parsers that need to be installed
            ensure_installed = {
                "c",
                "lua",
                "javascript",
                "typescript",
                "tsx",
                "go",
                "rust",
                "python",
                "html",
                "css",
                "bash",
                "yaml",
                "json",
                "vim",
                "vimdoc",
                "query",
                "markdown",
                "markdown_inline",
                "dockerfile",
                "gitignore",
            },

            -- Install parsers synchronously (only applied ot `ensure_installed`)
            sync_install = false,

            -- Automatically install missing parsers when entering buffer
            auto_install = true,

            highlight = {
                enable = true,

                -- Disable treesitter highlighting for large files to avoid slowdowns
                disable = function(lang, buf)
                    local max_filesize = 100 * 1024 -- 100 KB
                    local ok, stats = pcall(vim.loop.fs_stat, vim.api.nvim_buf_get_name(buf))
                    if ok and stats and stats.size > max_filesize then
                        return true
                    end
                end,

                -- Setting this to true will run `:h syntax` and tree-sitter at the same time.
                -- Set this to `true` if you depend on 'syntax' being enabled (like for indentation).
                -- Using this option may slow down your editor, and you may see some duplicate highlights.
                -- Instead of true it can also be a list of languages
                additional_vim_regex_highlighting = false,
            },
            indent = { enable = true },
        })
    end
}

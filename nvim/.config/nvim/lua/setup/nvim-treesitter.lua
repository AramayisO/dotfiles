require('nvim-treesitter.configs').setup({
    ensure_installed = "maintained",
    sync_install = false,
    ignore_install = {},
    highlight = {
        enable = true,
        -- Setting this to true will run `:h syntax` and tree-sitter at the same time.
        -- Set this to `true` if you depend on 'syntax' being enabled (like for indentation).
        -- Using this option may slow down your editor, and you may see some duplicate highlights.
        -- Instead of true it can also be a list of languages
        additional_vim_regex_highlighting = false,
    },
    incremental_selection = {
        enable = true,
        keymaps = {
            init_selection = "gnn",
            node_incremental = "grn",
            scope_incremental = "grc",
            node_decremental = "grm",
        },
    },
    indent = {
        enable = true
    }
})

-- Keymaps
-- zc - fold close
-- zo - fold open
-- za - fold toggle
-- zi - invert `foldenable`
vim.cmd([[
    set foldmethod=manual
    set foldexpr=nvim_treesitter#foldexpr()
]])

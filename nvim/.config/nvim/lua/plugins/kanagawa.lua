return {
    {
        "rebelot/kanagawa.nvim",
        lazy = false,    -- make sure we load this during startup
        priority = 1000, -- make sure to load this before all the other start plugins
        config = function()
            -- load the colorscheme
            vim.cmd([[colorscheme kanagawa]])
        end,
    },
}

return {
    {
        "0xstepit/flow.nvim",
        lazy = false,
        priority = 1000,
        opts = {},
        config = function() 
            require("flow").setup({
                transparent = false,
                fluo_color = "pink", -- pink, yello, orange, or green
                mode = "normal", -- Intensity of palette: normal, bright, desaturate, dark
                aggressive_spell = true, -- Display colors for spell check
            })
        end,
    },
    {
        "nvim-lualine/lualine.nvim",
        dependencies = { "nvim-tree/nvim-web-devicons" },
        opts = {
            theme = "auto",
        },
        config = function()
            -- Lualine overwrites laststatus with 2 for some reason
            vim.opt.laststatus = 3
        end,
    }
}

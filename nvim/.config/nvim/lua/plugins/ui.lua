return {
    {
        "scottmckendry/cyberdream.nvim",
        lazy = false,
        priority = 1000,
        transparent = true,
    },
    {
        "nvim-lualine/lualine.nvim",
        dependencies = { "nvim-tree/nvim-web-devicons" },
        options = {
            theme = "auto",
        },
    }
}

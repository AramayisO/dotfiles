-- Available UI themes
local themes = {
    dropdown = "dropdown", -- centered list
    cursor = "cursor",     -- cursor relative list
    ivy = "ivy",           -- bottom panel overlay
}

--- Builds the pickers config table and sets the theme of all builtin pickers to the specified theme.
-- See https://github.com/nvim-telescope/telescope.nvim?tab=readme-ov-file#themes for config docs.
-- @param builtins table: telescope.builtin
-- @param theme string: one of the values from the themes table
-- @return table: the pickers config table
local function build_pickers_with_theme(builtins, theme)
    local pickers = {}

    for name, func in pairs(builtins) do
        if type(func) == "function" then
            pickers[name] = { theme = theme }
        end
    end

    return pickers
end

return {
    "nvim-telescope/telescope.nvim",
    dependencies = { 
        "nvim-lua/plenary.nvim",
        { "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
    },
    config = function()
        local telescope = require("telescope")
        local builtins = require("telescope.builtin")

        telescope.setup({
            pickers = build_pickers_with_theme(builtins, themes.ivy)
        })

        -- Use telescope-fzf-native extension
        telescope.load_extension("fzf")
    end
}

return {
    {
        "zaldih/themery.nvim",
        lazy = false,
        config = function()
            require('themery').setup({
                themes = {
                    --"catppuccin",
                    --"catppuccin-frappe", 
                    --"catppuccin-latte", 
                    --"catppuccin-macchiato", 
                    --"catppuccin-mocha",
                    "kanagawa-wave",
                    "kanagawa-dragon",
                    "kanagawa-lotus",
                },
                themeConfigFile = "~/.config/nvim/lua/theme.lua",
                livePreview = true
            })
        end
    }
}

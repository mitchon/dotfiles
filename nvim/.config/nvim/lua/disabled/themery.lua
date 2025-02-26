return {
    {
        "zaldih/themery.nvim",
        config = function()
            require('themery').setup({
                themes = {
                    "gruvbox",
                    "catppuccin",
                    "catppuccin-frappe", 
                    "catppuccin-latte", 
                    "catppuccin-macchiato", 
                    "catppuccin-mocha"
                },
                themeConfigFile = "~/.config/nvim/lua/theme.lua",
                livePreview = true
            })
        end
    }
}

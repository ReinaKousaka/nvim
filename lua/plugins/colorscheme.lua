return {
    {
        "AlexvZyl/nordic.nvim",
        lazy = false,
        priority = 1000,
        config = function()
            require("nordic").setup({
                bold_keywords = true,
                bright_border = true,
                visual = { theme = "light", blend = 0.95 },
                cursorline = { theme = "light", blend = 0.95 },
            })
            require("nordic").load()
        end,
    },
}

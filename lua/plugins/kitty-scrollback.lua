return {
    "mikesmithgh/kitty-scrollback.nvim",
    enabled = true,
    lazy = true,
    cmd = {
        "KittyScrollbackGenerateKittens",
        "KittyScrollbackCheckHealth",
        "KittyScrollbackGenerateCommandLineEditing",
    },
    event = { "User KittyScrollbackLaunch" },
    -- version = '*', -- latest stable version, may have breaking changes if major version changed
    -- version = '^6.0.0', -- pin major version, include fixes and features that do not have breaking changes
    config = function()
        require("kitty-scrollback").setup({
            status_window = {
                enabled = true,
                style_user_status_colors = true, -- Use your own colors
            },
            highlight_overrides = {
                -- Force the scrollback background to match your exact Neovim background
                KittyScrollbackNvimNormal = { link = "Comment" },
                -- Force the selection color to match your usual visual mode
                KittyScrollbackNvimVisual = { link = "Visual" },
                KittyScrollbackNvimFloatBorder = { link = "FloatBorder" },
            },
        })
    end,
}

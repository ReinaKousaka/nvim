return {
    "nvim-lualine/lualine.nvim",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    config = function()
        require("lualine").setup({
            options = {
                theme = "nord",
                component_separators = "",
                section_separators = { left = "", right = "" }, -- circle edge
            },
            sections = {
                lualine_a = { { "mode", right_padding = 2 } },
                lualine_b = {
                    {
                        "filename",
                        path = 1, -- 0 = filename, 1 = relative path, 2 = absolute path, 3 = absolute with ~
                        shorting_target = 40, -- shorten path if too long
                        symbols = {
                            modified = " ●", -- text to show when the file is modified
                            readonly = " ",
                            unnamed = "[No Name]",
                        },
                    },
                    "branch",
                },
                lualine_c = {
                    "%=", --[[ add your center components here in place of this comment ]]
                },
                lualine_x = {},
                lualine_y = { "filetype", "progress" },
                lualine_z = {
                    { "location", left_padding = 2 },
                },
            },
            inactive_sections = {
                lualine_a = { "filename" },
                lualine_b = {},
                lualine_c = {},
                lualine_x = {},
                lualine_y = {},
                lualine_z = { "location" },
            },
            tabline = {},
            extensions = {},
        })
    end,
}

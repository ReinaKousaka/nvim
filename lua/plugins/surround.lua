return {
    "kylechui/nvim-surround",
    version = "^3.0.0", -- Use for stability; omit to use `main` branch for the latest features
    event = "VeryLazy",
    config = function()
        require("nvim-surround").setup({
            -- ysiw(
            -- ds(
            -- yss(    whole line
            -- "test" --> ("test")    by: ysa"(       a = around
            -- "test" --> "(test)"    by: ysi"(       i = inner
            surrounds = {
                -- swap the default spacing behaviours for open/close brackets
                ["("] = {
                    add = function()
                        return { { "(" }, { ")" } }
                    end,
                },
                [")"] = {
                    add = function()
                        return { { "( " }, { " )" } }
                    end,
                },
                ["["] = {
                    add = function()
                        return { { "[" }, { "]" } }
                    end,
                },
                ["]"] = {
                    add = function()
                        return { { "[ " }, { " ]" } }
                    end,
                },
                ["{"] = {
                    add = function()
                        return { { "{" }, { "}" } }
                    end,
                },
                ["}"] = {
                    add = function()
                        return { { "{ " }, { " }" } }
                    end,
                },
                ["<"] = {
                    add = function()
                        return { { "<" }, { ">" } }
                    end,
                },
                [">"] = {
                    add = function()
                        return { { "< " }, { " >" } }
                    end,
                },
            },
        })
    end,
}

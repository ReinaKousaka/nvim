return {
    "stevearc/conform.nvim",
    -- opts will be merged with the default opts
    opts = {
        formatters_by_ft = {
            c = { "clang_format" },
            cpp = { "clang_format" },
            cmake = { "cmake_format" },
            python = function(bufnr)
                if require("conform").get_formatter_info("rubuff_format", bufnr).available then
                    return { "rubuff_format" }
                else
                    return { "isort", "black" }
                end
            end,
        },
        -- formatters = {
        --     clang_format = {
        --         prepend_args = { "--style=file:~/.config/nvim/.clang-format" },
        --     },
        -- },
    },
}

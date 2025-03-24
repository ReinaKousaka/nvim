return {
    "saghen/blink.cmp",
    opts = {
        completion = {
            list = {
                -- No item will selected by default
                -- https://cmp.saghen.dev/configuration/completion.html#list
                selection = { preselect = false, auto_insert = false },
            },
        },
        keymap = {
            ["<Tab>"] = { "select_next", "fallback" },
            ["<C-j>"] = { "select_next", "fallback" },
            ["<C-k>"] = { "select_prev", "fallback" },
        },
    },
}

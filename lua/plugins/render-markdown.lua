return {
    {
        "MeanderingProgrammer/render-markdown.nvim",
        dependencies = { "nvim-treesitter/nvim-treesitter" },
        ft = { "markdown" },
        opts = {},
        keys = {
            { "<leader>tm", "<cmd>RenderMarkdown toggle<cr>", desc = "Toggle markdown render" },
        },
    },
}

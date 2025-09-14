return {
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v3.x",
    dependencies = {
        "nvim-lua/plenary.nvim", -- backend utilities, e.g. filesystem scanning
        "MunifTanjim/nui.nvim", -- UI components
        "nvim-tree/nvim-web-devicons", -- optional, but recommended
    },
    lazy = false, -- neo-tree will lazily load itself
    config = function()
        vim.keymap.set("n", "<leader>e", ":Neotree toggle<CR>", { noremap = true, silent = true })
        vim.keymap.set("n", "<leader>fr", ":Neotree reveal<CR>", { noremap = true, silent = true })
        require("neo-tree").setup({})
    end,
}

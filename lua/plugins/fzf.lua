return {
    "ibhagwan/fzf-lua",
    -- optional for icon support
    dependencies = { "nvim-tree/nvim-web-devicons" },
    -- or if using mini.icons/mini.nvim
    -- dependencies = { "nvim-mini/mini.icons" },
    opts = {},
    config = function(_, opts)
        vim.keymap.set("n", "<C-p>", "<cmd>FzfLua files<CR>", { noremap = true })
        vim.keymap.set("n", "<C-f>", "<cmd>FzfLua grep<CR>", { noremap = true })

        require("fzf-lua").setup({
            fzf = {
                -- use Ctrl + ijkl to move in the FZF window
                ["C-j"] = "down",
                ["C-k"] = "up",
                ["C-h"] = "preview-page-down",
                ["C-l"] = "preview-page-down",
            }
        })
    end
}


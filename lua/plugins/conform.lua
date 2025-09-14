return {
    "stevearc/conform.nvim",
    opts = {},
    config = function(_, opts)
        vim.keymap.set("n", "<leader>cf", function()
            local formatters = require("conform").list_formatters_for_buffer()
            vim.notify("Available formatters for buffer: " .. table.concat(formatters, ", "))

            local did_format = require("conform").format({
                lsp_fallback = true,
                async = false, -- Using sync for easier debugging
                callback = function()
                    local actual_formatters = require("conform").list_formatters_for_buffer()
                    vim.notify("Formatted with: " .. table.concat(actual_formatters, ", "))
                end,
            })

            if not did_format then
                -- Check if LSP is the fallback and if it's available
                local lsp_clients = vim.lsp.get_active_clients({ bufnr = 0 })
                local lsp_supports_formatting = false
                for _, client in ipairs(lsp_clients) do
                    if client.supports_method("textDocument/formatting") then
                        lsp_supports_formatting = true
                        break
                    end
                end

                if lsp_supports_formatting then
                    vim.notify("Formatted using LSP fallback.", vim.log.levels.INFO)
                else
                    vim.notify("Formatting failed: No available formatters or LSP support found.", vim.log.levels.WARN)
                end
            end
        end, { desc = "Format current file" })
        require("conform").setup({
            formatters_by_ft = {
                lua = { "stylua" },
                -- Conform will run multiple formatters sequentially
                -- python = { "isort", "black" },
                -- You can customize some of the format options for the filetype (:help conform.format)
                -- rust = { "rustfmt", lsp_format = "fallback" },
                -- Conform will run the first available formatter
                -- javascript = { "prettierd", "prettier", stop_after_first = true },
            },
        })
    end,
}

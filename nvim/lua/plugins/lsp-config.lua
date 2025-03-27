return {
    {
        "williamboman/mason.nvim",
        config = function()
            require("mason").setup({
                ui = {
                    border = "rounded", -- or "single", "double", "solid"
                },
            })
        end,
    },
    {
        "williamboman/mason-lspconfig.nvim",
        config = function()
            require("mason-lspconfig").setup({})
        end,
    },
    {
        "neovim/nvim-lspconfig",
        config = function()
            vim.diagnostic.config({
                -- Show diagnostic text inline
                virtual_text = true,

                -- Configure floating window for full messages
                float = {
                    max_width = 80,
                    max_height = 20,
                    border = "rounded",
                },
            })
            local capabilities = require("cmp_nvim_lsp").default_capabilities()
            local lspconfig = require("lspconfig")
            -- Configure LSP properly
            lspconfig.lua_ls.setup({
                capabilities = capabilities,
            })
            lspconfig.clangd.setup({
                capabilities = capabilities,
            })
            lspconfig.ts_ls.setup({
                capabilities = capabilities,
            })
            lspconfig.solargraph.setup({
                capabilities = capabilities,
            })
            lspconfig.pyright.setup({
                capabilities = capabilities,
            })
            -- Create autocommand for LSP attachment
            vim.api.nvim_create_autocmd("LspAttach", {
                group = vim.api.nvim_create_augroup("UserLspConfig", { clear = true }),
                callback = function(ev)
                    -- Enable completion triggered by <C-x><C-o>
                    vim.bo[ev.buf].omnifunc = "v:lua.vim.lsp.omnifunc"

                    -- Buffer-local key mapping for hover
                    vim.keymap.set("n", "K", vim.lsp.buf.hover, { buffer = ev.buf })
                    vim.keymap.set("n", "<leader>gd", vim.lsp.buf.definition, { buffer = ev.buf })
                    vim.keymap.set({ "n", "v" }, "<leader>ca", vim.lsp.buf.code_action, { buffer = ev.buf })
                    vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename, { buffer = ev.buf })
                    vim.keymap.set("n", "<leader>gr", vim.lsp.buf.references, { buffer = ev.buf })
                    vim.keymap.set("n", "<leader>d", vim.diagnostic.open_float, { buffer = ev.buf })
                end,
            })
        end,
    },
}

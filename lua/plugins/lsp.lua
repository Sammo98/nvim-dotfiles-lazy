return{
    {
        'VonHeikemen/lsp-zero.nvim',
        branch = 'v1.x',
        dependencies = {
            -- LSP Support
            {'neovim/nvim-lspconfig'},             -- Required
            {'williamboman/mason.nvim'},           -- Optional
            {'williamboman/mason-lspconfig.nvim'}, -- Optional

            -- Autocompletion
            {'hrsh7th/nvim-cmp'},         -- Required
            {'hrsh7th/cmp-nvim-lsp'},     -- Required
            {'hrsh7th/cmp-buffer'},       -- Optional
            {'hrsh7th/cmp-path'},         -- Optional
            {'saadparwaiz1/cmp_luasnip'}, -- Optional
            {'hrsh7th/cmp-nvim-lua'},     -- Optional

            -- Snippets
            {'L3MON4D3/LuaSnip'},             -- Required
            {'rafamadriz/friendly-snippets'}, -- Optional

            -- Rust
            {"simrat39/rust-tools.nvim"}
        },

        config = function()
            local lsp = require('lsp-zero').preset({
                name = "minimal",
                set_lsp_keymaps = true,
                manage_nvim_cmp = true,
                suggest_lsp_servers = false

            })
            lsp.skip_server_setup({'rust_analyzer'})

            lsp.setup()

            local rust_tools = require('rust-tools')

            rust_tools.setup({
                server = {
                    on_attach = function()
                    end
                }
            })
        end

    },
    {
        "folke/trouble.nvim",
        dependencies = {"nvim-tree/nvim-web-devicons"},
        keys = {
            {"<leader>dt", "<cmd>: TroubleToggle document_diagnostics<cr>", desc = "Toggle Diagnostics"}
        },
        config = function ()
            require("trouble").setup{

            }
        end
    }

}

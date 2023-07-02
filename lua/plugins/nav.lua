return{
    {
        "SmiteshP/nvim-navbuddy",
        lazy = false,
        dependencies = {
            "neovim/nvim-lspconfig",
            "SmiteshP/nvim-navic",
            "MunifTanjim/nui.nvim"
        },
        keys = {
              {"<leader>nv", "<cmd>Navbuddy<cr>", desc = "Nav"},
        },
        config = function ()
            local actions = require("nvim-navbuddy.actions")
            local navbuddy = require("nvim-navbuddy")
            navbuddy.setup({
                window = {
                    border = "double"
                },
                mappings = {
                    ["k"] = actions.next_sibling,
                    ["i"] = actions.previous_sibling,
                    ["j"] = actions.parent,
                    ["l"] = actions.children,
                    ["h"] = actions.insert_name,
                    ["<enter>"] = actions.select,

                },
                lsp = {auto_attach = true}
            })
        end
    },
    {
        {
            "chrisgrieser/nvim-spider",
            lazy = false,
            keys = {
                {"w", "<cmd> lua require('spider').motion('w')<CR>", mode = {"n", "o", "x"}},
                {"e", "<cmd> lua require('spider').motion('e')<CR>", mode = {"n", "o", "x"}},
                {"b", "<cmd> lua require('spider').motion('b')<CR>", mode = {"n", "o", "x"}},
            }
        }
    },
    {
{
            "folke/flash.nvim",
            event = "VeryLazy",
            ---@type Flash.Config
            opts = {},
            keys = {
                {
                    "s",
                    mode = { "n", "x", "o" },
                    function()
                        require("flash").jump()
                    end,
                    desc = "Flash",
                },
                {
                    "S",
                    mode = { "n", "o", "x" },
                    function()
                        require("flash").treesitter()
                    end,
                    desc = "Flash Treesitter",
                },
                {
                    "r",
                    mode = "o",
                    function()
                        require("flash").remote()
                    end,
                    desc = "Remote Flash",
                },
                {
                    "R",
                    mode = { "o", "x" },
                    function()
                        require("flash").treesitter_search()
                    end,
                    desc = "Flash Treesitter Search",
                },
                {
                    "<c-s>",
                    mode = { "c" },
                    function()
                        require("flash").toggle()
                    end,
                    desc = "Toggle Flash Search",
                },
            },
        }
    }
}

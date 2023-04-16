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
    }
}

return {
    {
        "folke/zen-mode.nvim",
        keys = {
            {"<leader>ze", "<cmd>: ZenMode <cr>", desc = "Zen Mode"},
        },
        config = function()
            require("zen-mode").setup{
            }
        end
    },
    {
        "beauwilliams/focus.nvim",
        config = function()
            require("focus").setup({})
        end
    }
}


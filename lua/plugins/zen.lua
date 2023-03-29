return {
    {
        "beauwilliams/focus.nvim",
        config = function()
            require("focus").setup({
                excluded_filetypes = {"toggleterm"}
            })
        end
    }
}


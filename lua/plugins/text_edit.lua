return {
{

    "kylechui/nvim-surround",
        tag = "*", -- Use for stability; omit to use `main` branch for the latest features

    config = function()
	    require("nvim-surround").setup({})
    end
},
{
	"m4xshen/autoclose.nvim",
	config = function()
		require("autoclose").setup()
	end
},
{
    "numToStr/Comment.nvim",
    config = function()
        require("Comment").setup()
    end
},
}

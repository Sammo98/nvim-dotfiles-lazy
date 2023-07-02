return {
{
		'nvim-telescope/telescope.nvim', tag = '0.1.1',
		dependencies = { 'nvim-lua/plenary.nvim', },
		keys = {
			{"<leader>ff", "<cmd>:Telescope find_files<cr>", desc = "Find Files"},
			{"<leader>fr", "<cmd>:Telescope live_grep<cr>", desc = "Grep Files"},
			{"<leader>fs", "<cmd>:Telescope current_buffer_fuzzy_find<cr>", desc = "Grep Buffer"},
		},
		config = function()
			require("telescope").setup({
			})
		end
	},

	{
	        "nvim-telescope/telescope-file-browser.nvim",
		lazy = false,
		keys = {
			{"<leader>fe", "<cmd>:Telescope file_browser<cr>", desc = "Browse Files"}
		},
		config = function()
			require("telescope").load_extension("file_browser")
		end
	},
    {
        'LukasPietzschmann/telescope-tabs',
        dependencies = {"nvim-telescope/telescope.nvim"},
        keys = {
            {"<leader>ft", "<cmd>:Telescope telescope-tabs list_tabs<cr>", desc = "Find Buffers"}
        },
        config = function()
            require('telescope-tabs').setup({
            })
        end
    }
}

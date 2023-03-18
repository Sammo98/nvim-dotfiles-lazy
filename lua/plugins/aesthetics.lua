return {
	{
		'nvim-lualine/lualine.nvim',
		config = function()
			require("lualine").setup({
				options = {
					icons_enabled = true,
					theme = "auto",
					component_separators = { left = "", right = "" },
					section_separators = { left = "", right = "" },
					always_divide_middle = true,
					globalstatus = true,
					refresh = {
						statusline = 5000,
						tabline = 5000,
						winbar = 5000,
					},
				},
				sections = {
					lualine_a = { "mode" },
					lualine_b = { "branch", "diff", "diagnostics" },
					lualine_c = {
						{
							"filename",
							path = 1,
						},
					},
					lualine_x = { "fileformat", "filetype" },
					lualine_y = {},
					lualine_z = { "location" },
				},
				inactive_sections = {
					lualine_x = { "location" },
				},
			})
		end
	},
	{
		'glepnir/dashboard-nvim',
		event = 'VimEnter',
		dependencies = { {'nvim-tree/nvim-web-devicons'}},
		lazy = false,
		priority = 1000,
		config = function()
			require('dashboard').setup {
				theme = "doom",
				config = {
					header = {
						"",
						"",
						"",
						"",
						"",
						"",
						"",
						" ███╗   ██╗███████╗ ██████╗ ██╗   ██╗██╗███╗   ███╗ ",
						" ████╗  ██║██╔════╝██╔═══██╗██║   ██║██║████╗ ████║ ",
						" ██╔██╗ ██║█████╗  ██║   ██║██║   ██║██║██╔████╔██║ ",
						" ██║╚██╗██║██╔══╝  ██║   ██║╚██╗ ██╔╝██║██║╚██╔╝██║ ",
						" ██║ ╚████║███████╗╚██████╔╝ ╚████╔╝ ██║██║ ╚═╝ ██║ ",
						" ╚═╝  ╚═══╝╚══════╝ ╚═════╝   ╚═══╝  ╚═╝╚═╝     ╚═╝ ",
						"",
						"",
						"",
						"",
						"",
						"",
					},
					center = {
						{
							icon = '🔭 ',
							icon_hl = 'Title',
							desc = 'Find Files',
							desc_hl = '',
							key = 'f',
							action = 'Telescope find_files'
						},
						{
							icon = '  ',
							icon_hl = 'Title',
							desc = 'Explore Files',
							desc_hl = '',
							key = 'e',
							action = 'Telescope file_browser'
						},
						{
							icon = '🪦 ',
							icon_hl = 'Title',
							desc = 'Grep Files',
							desc_hl = 'hiii',
							key = 'g',
							action = 'Telescope live_grep'
						},
					},

				},
			}	
		end
	},
	{
		"navarasu/onedark.nvim",
		lazy = false, --  sure we load this during startup if it is your main colorscheme
		priority = 1000, -- make sure to load this before all the other start plugins
		config = function()
			require("onedark").setup{
				style = "deep",
				lualine = {transparent = false},
				highlights = {
					TSVariable = {fg = "#cc241d"}
				}
			}
			-- load the colorscheme here
			vim.cmd([[colorscheme onedark]])
		end,
	}
}

return {
	{
		"EdenEast/nightfox.nvim",
		config = function()
			require('nightfox').setup({
				options = {
					transparent = true, -- Disable setting background
					styles = {
						comments = "italic" }
				}
			})

			vim.cmd.colorscheme "nightfox"
		end,
	},

	{
		'projekt0n/github-nvim-theme',
		name = 'github-theme',
		lazy = false, -- make sure we load this during startup if it is your main colorscheme
		priority = 1000, -- make sure to load this before all the other start plugins
		config = function()
			require('github-theme').setup({
				-- ...
				--
				options = {
					transparent = true,
					styles = {
						comments = 'italic',
					}
				},
			})

			-- vim.cmd('colorscheme github_dark_dimmed')
		end,
	},

	{
		"folke/tokyonight.nvim",
		lazy = false,
		priority = 1000,
		opts = {},
		-- config = function ()
		-- 	vim.cmd[[colorscheme tokyonight-night]]
		-- end
	},
	{
		"navarasu/onedark.nvim",
		config = function()
			require('onedark').setup {
				style = 'warmer',
				transparent = true,
			}
			-- vim.cmd.colorscheme "onedark"
		end
	},
	{
		"vague2k/vague.nvim",
		config = function()
			-- NOTE: you do not need to call setup if you don't want to.
			require("vague").setup({
				-- optional configuration here
			})
			-- vim.cmd.colorscheme "vague"
		end
	},

	{
		"miikanissi/modus-themes.nvim",
		priority = 1000,
	},
	{
		"rose-pine/neovim",
		name = "rose-pine",
		config = function()
			require("rose-pine").setup({
				styles = {
					transparency = true,
				}
			})

			-- vim.cmd("colorscheme rose-pine")
		end
	},
	{
		"ellisonleao/gruvbox.nvim",
		priority = 1000,
		config = function()
			require("gruvbox").setup({
				contrast = "soft",
				dim_inactive = false,
				transparent_mode = true,
			})

			-- vim.cmd("colorscheme gruvbox")
		end
	},
}

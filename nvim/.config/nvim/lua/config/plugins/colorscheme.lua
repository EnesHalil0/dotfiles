return {
	{
		"EdenEast/nightfox.nvim",
		config = function()
			require('nightfox').setup({
				options = {
					transparent = false, -- Disable setting background
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
	}
}

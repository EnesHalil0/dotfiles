return {
	{
		"navarasu/onedark.nvim",
		config = function()
			require("onedark").setup({
				-- Main options --
				style = "dark", -- Default theme style. Choose between 'dark', 'darker', 'cool', 'deep', 'warm', 'warmer' and 'light'
				transparent = true, -- Show/hide background
				term_colors = true, -- Change terminal color as per the selected theme style
			})

			-- vim.cmd.colorscheme("onedark")
		end,
	},

	{
		"folke/tokyonight.nvim",
		lazy = false,
		priority = 1000,
		opts = {},
		config = function()
			vim.cmd.colorscheme("tokyonight-night")
		end,
	},

	{
		"rebelot/kanagawa.nvim",
		opts = {
			theme = "wave",
		},
		-- config = function()
		-- 	vim.cmd.colorscheme("kanagawa")
		-- end,
	},

	{
		"sainnhe/sonokai",
		config = function()
			vim.g.sonokai_transparent_background = 1
			vim.cmd.colorscheme("sonokai")
		end,
	},
}

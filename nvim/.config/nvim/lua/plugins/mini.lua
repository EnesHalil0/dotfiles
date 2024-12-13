return {
	{
		"echasnovski/mini.nvim",
		config = function()
			require("mini.ai").setup()
			require("mini.pick").setup()
			require("mini.splitjoin").setup()
			require("mini.surround").setup()
		end,
	},
}

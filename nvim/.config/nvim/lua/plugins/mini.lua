return {
	{
		"echasnovski/mini.nvim",
		config = function()
			require("mini.ai").setup()
			require("mini.surround").setup()
			require("mini.icons").setup()
			require("mini.statusline").setup()
			require("mini.git").setup()
			require("mini.diff").setup()
			require("mini.pairs").setup()
			require("mini.splitjoin").setup()
			require("mini.indentscope").setup({
				draw = {
					delay = 0,
				},
				symbol = "▏",
			})
			require("mini.indentscope").gen_animation.none()
		end,
	},
}

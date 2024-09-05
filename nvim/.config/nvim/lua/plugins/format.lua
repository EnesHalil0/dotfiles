return {
	"stevearc/conform.nvim",
	lazy = false,
	keys = {
		{
			"<leader>f",
			function()
				require("conform").format({ async = true, lsp_fallback = true })
			end,
			mode = "",
		},
	},
	opts = {
		formatters_by_ft = {
			lua = { "stylua" },
		},

		format_on_save = {
			timeout_ms = 500,
			lsp_format = "fallback",
			notify_on_error = true,
		},
	},
}

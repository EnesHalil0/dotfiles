return {
	{
		"neovim/nvim-lspconfig",
		dependencies = {
			'saghen/blink.cmp',
			{
				"folke/lazydev.nvim",
				opts = {
					library = {
						{ path = "${3rd}/luv/library", words = { "vim%.uv" } },
					},
				},
			},
		},

		config = function()
			local capabilities = require('blink.cmp').get_lsp_capabilities()
			require("lspconfig").lua_ls.setup { capabilites = capabilities }
			require("lspconfig").clangd.setup {}
			require("lspconfig").gopls.setup {}
			require("lspconfig").zls.setup {}

			--
			-- Keymaps
			--
			local fzf = require('fzf-lua')
			local opts = { buffer = bufnr, noremap = true, silent = true }
			vim.keymap.set("n", "gd", fzf.lsp_definitions, opts)
			vim.keymap.set("n", "gr", fzf.lsp_references, opts)
			vim.keymap.set("n", "gD", vim.lsp.buf.declaration, opts)
			vim.keymap.set("n", "gT", vim.lsp.buf.type_definition, opts)
			vim.keymap.set("n", "K", vim.lsp.buf.hover, opts)

			vim.keymap.set("n", "<space>rn", vim.lsp.buf.rename, opts)
			vim.keymap.set("n", "<space>ca", vim.lsp.buf.code_action, opts)
			vim.keymap.set("n", "<space>wd", fzf.lsp_document_symbols, opts)
		end,
	},
	{
		"williamboman/mason.nvim",
		dependencies = {
			"williamboman/mason-lspconfig.nvim",
		},
		config = function()
			require("mason").setup()
			require("mason-lspconfig").setup()
		end,
	}
}

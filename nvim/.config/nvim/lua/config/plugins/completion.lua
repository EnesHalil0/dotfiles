return {
	{
		'saghen/blink.cmp',
		dependencies = {
			-- add source
			{ 'dmitmel/cmp-digraphs' },
			{ 'rafamadriz/friendly-snippets' },
		},

		version = 'v0.*',

		opts = {
			snippets = {},

			appearance = {
				-- sets the fallback highlight groups to nvim-cmp's highlight groups
				-- useful for when your theme doesn't support blink.cmp
				-- will be removed in a future release, assuming themes add support
				use_nvim_cmp_as_default = false,
				-- set to 'mono' for 'Nerd Font Mono' or 'normal' for 'Nerd Font'
				-- adjusts spacing to ensure icons are aligned
				nerd_font_variant = "mono",
			},
			completion = {
				accept = {
					-- experimental auto-brackets support
					auto_brackets = {
						enabled = true,
					},
				},
				menu = {
					draw = {
						treesitter = { "lsp" },
					},
				},
				documentation = {
					auto_show = true,
					auto_show_delay_ms = 200,
				},
				ghost_text = {
					enabled = vim.g.ai_cmp,
				},
			},

			-- experimental signature help support
			-- signature = { enabled = true },

			sources = {
				-- adding any nvim-cmp sources here will enable them
				-- with blink.compat
				default = { "lsp", "path", "snippets", "buffer" },

				providers = {
					-- create provider
					digraphs = {
						-- IMPORTANT: use the same name as you would for nvim-cmp
						name = 'digraphs',
						module = 'blink.compat.source',

						-- all blink.cmp source config options work as normal:
						score_offset = -3,

						-- this table is passed directly to the proxied completion source
						-- as the `option` field in nvim-cmp's source config
						--
						-- this is NOT the same as the opts in a plugin's lazy.nvim spec
						opts = {
							-- this is an option from cmp-digraphs
							cache_digraphs_on_start = true,

							-- If you'd like to use a `name` that does not exactly match nvim-cmp,
							-- set `cmp_name` to the name you would use for nvim-cmp, for instance:
							-- cmp_name = "digraphs"
							-- then, you can set the source's `name` to whatever you like.
						},
					},
				},
			},

			cmdline = {
				enabled = false,
			},

			keymap = {
				preset = "enter",
				["<C-y>"] = { "select_and_accept" },
			},
		}
	},
	{
		'saghen/blink.compat',
		-- use the latest release, via version = '*', if you also use the latest release for blink.cmp
		version = '*',
		-- lazy.nvim will automatically load the plugin when it's required by blink.cmp
		lazy = true,
		-- make sure to set opts so that lazy.nvim calls blink.compat's setup
		opts = {},
	},
}

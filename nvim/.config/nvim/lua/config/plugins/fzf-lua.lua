return {
	"ibhagwan/fzf-lua",
	-- optional for icon support
	dependencies = { "nvim-tree/nvim-web-devicons" },
	config = function()
		-- calling `setup` is optional for customization
		require('fzf-lua').setup({ 'telescope' })

		vim.keymap.set("n", "<space>sf", require('fzf-lua').files)
		vim.keymap.set("n", "<space>sG", require('fzf-lua').grep)
		vim.keymap.set("n", "<space>sg", require('fzf-lua').live_grep)

		vim.keymap.set("n", "<space>sr", require('fzf-lua').resume)
		vim.keymap.set("n", "<space>sm", require('fzf-lua').manpages)
		vim.keymap.set("n", "<space>sk", require('fzf-lua').keymaps)
		vim.keymap.set("n", "<space>sh", require('fzf-lua').helptags)
		vim.keymap.set("n", "<space>sb", require('fzf-lua').buffers)
	end
}

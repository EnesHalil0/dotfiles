return {
  'christoomey/vim-tmux-navigator',
  cmd = {
    'TmuxNavigateLeft',
    'TmuxNavigateDown',
    'TmuxNavigateUp',
    'TmuxNavigateRight',
    'TmuxNavigatePrevious',
  },
  keys = {
    { '<m-h>', '<cmd>TmuxNavigateLeft<cr>' },
    { '<m-j>', '<cmd>TmuxNavigateDown<cr>' },
    { '<m-k>', '<cmd>TmuxNavigateUp<cr>' },
    { '<m-l>', '<cmd>TmuxNavigateRight<cr>' },
    { '<m-\\>', '<cmd>TmuxNavigatePrevious<cr>' },
  },
  config = function()
	  vim.g.tmux_navigator_no_mappings = 1
	  vim.api.nvim_set_keymap('n', '{Left-Mapping}', ':<C-U>TmuxNavigateLeft<cr>', { noremap = true, silent = true })
	  vim.api.nvim_set_keymap('n', '{Down-Mapping}', ':<C-U>TmuxNavigateDown<cr>', { noremap = true, silent = true })
	  vim.api.nvim_set_keymap('n', '{Up-Mapping}', ':<C-U>TmuxNavigateUp<cr>', { noremap = true, silent = true })
	  vim.api.nvim_set_keymap('n', '{Right-Mapping}', ':<C-U>TmuxNavigateRight<cr>', { noremap = true, silent = true })
	  vim.api.nvim_set_keymap('n', '{Previous-Mapping}', ':<C-U>TmuxNavigatePrevious<cr>', { noremap = true, silent = true })
  end
}

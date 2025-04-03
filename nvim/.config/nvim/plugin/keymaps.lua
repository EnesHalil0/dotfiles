local set = vim.keymap.set
local k = vim.keycode

set("i", "<C-c>", "<Esc>")

-- Toggle hlsearch if it's on, otherwise just do "enter"
set("n", "<CR>", function()
	---@diagnostic disable-next-line: undefined-field
	if vim.v.hlsearch == 1 then
		vim.cmd.nohl()
		return ""
	else
		return k "<CR>"
	end
end, { expr = true })

-- There are builtin keymaps for this now, but I like that it shows
-- the float when I navigate to the error - so I override them.
set("n", "]d", vim.diagnostic.goto_next)
set("n", "[d", vim.diagnostic.goto_prev)

-- These mappings control the size of splits (height/width)
set("n", "<C-s-h>", "<c-w>5<")
set("n", "<C-s-l>", "<c-w>5>")
set("n", "<C-s-k>", "<C-W>+")
set("n", "<C-s-j>", "<C-W>-")

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

set("n", "<C-l>", "<c-w>l")
set("n", "<C-h>", "<c-w>h")
set("n", "<C-k>", "<c-w>k")
set("n", "<C-j>", "<c-w>j")

vim.keymap.set("n", "<Esc>", "<cmd>nohlsearch<CR>")
vim.keymap.set("n", "<C-c>", "<cmd>nohlsearch<CR>")

vim.keymap.set("n", "<space>cd", function()
	-- Get the current buffer name
	local buf_name = vim.fn.expand('%:p')

	-- Check if the buffer name indicates it's an Oil buffer
	if buf_name:match('^oil://') then
		-- Remove the 'oil://' part to get the actual path
		local actual_path = buf_name:gsub('^oil://', '')
		local current_file_dir = vim.fn.fnamemodify(actual_path, ':h')

		-- Change the directory to the actual path of the Oil buffer
		vim.cmd('cd ' .. current_file_dir)
		print("Changed directory to: " .. current_file_dir)
	else
		-- Get the current file's directory
		local current_file_dir = vim.fn.expand('%:p:h')
		if current_file_dir ~= '' then
			vim.cmd('cd ' .. current_file_dir)
			print("Changed directory to: " .. current_file_dir)
		else
			print("Error: No current file.")
		end
	end
end)

-- Format
-- vim.keymap.set("n", "<space>ff", function()
-- 	vim.lsp.buf.format()
-- end)

-- Function to toggle the quickfix list
local function toggle_quickfix()
  local qf_exists = false
  for _, win in ipairs(vim.fn.getwininfo()) do
    if win.quickfix == 1 then
      qf_exists = true
      break
    end
  end
  if qf_exists then
    vim.cmd("cclose")
  else
    vim.cmd("copen")
  end
end

-- Keymap to toggle the quickfix list
vim.keymap.set("n", "<leader>qf", toggle_quickfix, { desc = "Toggle Quickfix List" })

vim.keymap.set("n", "<space>qq", ":close<CR>", { noremap = true, desc = "Quit Neovim" })

local expr = {silent = true, expr = true, remap = false}

vim.keymap.set('', 'j', "(v:count == 0 ? 'gj' : 'j')", expr)
vim.keymap.set('', 'k', "(v:count == 0 ? 'gk' : 'k')", expr)

local set = vim.keymap.set
local k = vim.keycode

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
set("n", "<M-s-h>", "<c-w>5<")
set("n", "<M-s-l>", "<c-w>5>")
set("n", "<M-s-k>", "<C-W>+")
set("n", "<M-s-j>", "<C-W>-")

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

set("n", "<M-v>", "<cmd>:vsplit<CR>")
set("n", "<M-s>", "<cmd>:split<CR>")
set("n", "<M-q>", "<cmd>:close<CR>")

vim.keymap.set("n", "<Esc>", "<cmd>nohlsearch<CR>")

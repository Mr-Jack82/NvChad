require "custom.plugins.autocmds"

-- Please check NvChad docs if you're totally new to nvchad + dont know lua!!
-- This is an example init file in /lua/custom/
-- this init.lua can load stuffs etc too so treat it like your ~/.config/nvim/

-- Leader key is ','
vim.g.mapleader = ","

-- My options
local opt = vim.opt

opt.relativenumber = true
opt.cmdheight = 2
opt.textwidth = 80
opt.colorcolumn = "81"
opt.scrolloff = 8
opt.sidescrolloff = 8
opt.showmode = false
opt.guicursor = {
  [[n-v-c:block,i-ci-ve:ver25,r-cr:hor20,o:hor50]],
  [[a:blinkwait700-blinkoff400-blinkon250-Cursor/lCursor]],
  [[sm:block-blinkwait175-blinkoff150-blinkon175]],
}

-- Allows you to save files you opened without write permissions via sudo
vim.cmd [[cabbrev w!! execute 'silent! write !sudo tee % >/dev/null' <bar> edit!]]

-- Enable soft wrapping text
vim.cmd [[command! -nargs=* Wrap set wrap linebreak nolist]]

-- Packer.nvim shortcut to update all plugins
vim.cmd [[command! PU PackerUpdate]]

-- MAPPINGS
local map = vim.keymap.set

-- Select last pasted text
map("n", "gV", "'`[' . strpart(getregtype(), 0, 1) . '`]'", { expr = true })

-- easy expansion of the active file directory
map("c", "%%", "<C-r>=fnameescape(expand('%:h')).'/'<CR>", { silent = false })
map("", "<leader>ew", ":e %%", { noremap = false, silent = false })
map("", "<leader>es", ":sp %%", { noremap = false, silent = false })
map("", "<leader>ev", ":vsp %%", { noremap = false, silent = false })
map("", "<leader>et", ":tabe %%", { noremap = false, silent = false })

-- Set working directory to the current buffer's directory
map("n", "cd", ":lcd %:p:h<bar>lua print('current directory is ' .. vim.fn.getcwd())<CR>", { silent = false })
map("n", "cu", "..<bar>pwd<CR>", { silent = false })

-- Make {motion} text uppercase in INSERT mode.
map("!", "<C-f>", "<Esc>gUiw`]a", { noremap = false })

-- Easier way to use of :ls command
map("n", "<leader>l", ":ls<CR>:b<Space>", { silent = false })

-- Keep the flags from the previous substitute command for normal an visual mode
map("n", "&", ":&&<CR>", { silent = false })
map("x", "&", ":&&<CR>", { silent = false })

-- Hop
map("n", "s", "<cmd>HopChar1<CR>", { noremap = false, silent = false })

map("", "<leader>/", "<cmd>HopPattern<CR>")

map(
  '',
  'f',
  "<cmd>lua require'hop'.hint_char1({ direction = require'hop.hint'.HintDirection.AFTER_CURSOR, current_line_only = true })<cr>",
  { noremap = true }
)

map(
  '',
  't',
  "<cmd>lua require'hop'.hint_char1({ direction = require'hop.hint'.HintDirection.AFTER_CURSOR, current_line_only = true, hint_offset = -1 })<cr>",
  { noremap = true}
)

map("o", "z", "<cmd>lua require'hop'.hint_char1()<CR>", { noremap = true })

-- NOTE: we heavily suggest using Packer's lazy loading (with the 'event','cmd' fields)
-- see: https://github.com/wbthomason/packer.nvim
-- https://nvchad.github.io/config/walkthrough

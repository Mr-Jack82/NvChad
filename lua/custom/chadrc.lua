local M = {}

M.plugins = require "custom.plugins"

-- make sure you maintain the structure of `core/default_config.lua` here,
-- example of changing theme:
M.ui = {
  -- theme stuff
  theme = "gruvchad",
}

M.mappings = require "custom.mappings"

-- Fix spelling errors
vim.cmd('iabbrev cosnt const')

return M

local M = {}

-- overriding default plugin configs!
M.treesitter = {
   ensure_installed = {
      "lua",
      "vim",
      "html",
      "vue",
      "css",
      "javascript",
      "json",
      "toml",
      "markdown",
      "c",
      "bash",
   },
}

return M

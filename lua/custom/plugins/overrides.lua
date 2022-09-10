local M = {}

M.nvimtree = {
  view = {
    width = 30,
    hide_root_folder = false,
    mappings = {
      custom_only = false,
      list = {
        -- user mappings go here
        { key = { "<CR>", "o", "l" }, action = "edit", mode = "n" },
      },
    },
  },
  renderer = {
    indent_markers = {
      enable = true,
    },
    icons = {
      padding = " ",
      symlink_arrow = " ➛ ",
    }
  },
  git = {
    enable = true,
  },
  actions = {
    open_file = {
      quit_on_open = true,
    },
  },
}

M.blankline = {
  filetype_exclude = {
    "help",
    "terminal",
    "alpha",
    "packer",
    "lspinfo",
    "TelescopePrompt",
    "TelescopeResults",
    "lsp-installer",
    "vimwiki",
    "startify",
    "dashboard",
    "man",
    "git",
    "gitmessengerpopup",
    "diagnosticpopup",
    "markdown",
    ""
  },
  buftype_exclude = { "terminal", "nofile" }
}

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

M.mason = {
  ensure_installed = {
    -- lua stuff
    "lua-language-server",
    "stylua",

    -- web dev
    "css-lsp",
    "html-lsp",
    "typescript-language-server",
    "deno",
    "emmet-ls",
    "json-lsp",
    "prettierd",

    -- shell
    "shft",
    "shellcheck",
  },
}

return M

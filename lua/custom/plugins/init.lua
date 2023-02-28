local overrides = require "custom.plugins.overrides"

return {
  ["tpope/vim-surround"] = { },
  ["tpope/vim-repeat"] = { },

  ["tpope/vim-unimpaired"] = {
    keys = { "[", "]" },
  },

  ["junegunn/vim-easy-align"] = { },
  ["romainl/vim-cool"] = {
    keys = { "/", "?" },
  },
  ["editorconfig/editorconfig-vim"] = { },

  ["phaazon/hop.nvim"] = {
    branch = 'v2',
    config = function()
      require'hop'.setup {
        uppercase_labels = true,
      }
    end,
  },

  ["tommcdo/vim-exchange"] = {
    keys = { { "n", "cx" }, { "v", "X" } }
  },

  ["907th/vim-auto-save"] = { },
  ["christoomey/vim-tmux-navigator"] = { },

  ["tpope/vim-fugitive"] = {
    cmd = {
      "Git",
      "Gdiff",
      "Gdiffsplit",
      "Gwrite",
      "Gw",
    },
  },

  ["turbio/bracey.vim"] = { },

  ["numToStr/Comment.nvim"] = {
    config = function()
      require("Comment").setup({
        ignore = "^$",
      })
    end,
  },

  ["jose-elias-alvarez/null-ls.nvim"] = {
    after = "nvim-lspconfig",
    config = function()
      require "custom.plugins.null-ls"
    end,
  },

  ["neovim/nvim-lspconfig"] = {
    config = function()
      require "plugins.configs.lspconfig"
      require "custom.plugins.lspconfig"
    end,
  },

  -- Overriding default plugins configs
   ["goolord/alpha-nvim"] = {
     disable = false
   },

    ["folke/which-key.nvim"] = {
      disable = false,
    },

    ["lukas-reineke/indent-blankline.nvim"] = {
      override_options = overrides.blankline,
    },

    ["nvim-treesitter/nvim-treesitter"]  = {
      override_options = overrides.treesitter,
    },

    ["nvim-tree/nvim-tree.lua"] = {
      override_options = overrides.nvimtree,
    },

    ["williamboman/mason.nvim"] = {
      override_options = overrides.mason,
    },
}

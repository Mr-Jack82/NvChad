local M = {}

M.disabled = {
  n = {
    -- Disable some of the default mappings
    ["<C-s>"] = "",
    ["<C-c>"] = "",
    ["<leader>n"] = "",
    ["<leader>rn"] = "",
    ["<C-n>"] = "", -- to disable 'Ctrl + n' in nvimtree
    ["<S-b>"] = "",
  }
}

M.general = {

  n = {
    -- Telescope
    ["<leader>cc"] = {"<cmd> Telescope <CR>", "Toggle telescope"},

    -- Save
    ["<leader>,"] = {"<cmd> w <CR>", "Quick save"},

    -- Little text editing improvements
    ["'"] = {",", "Inline search backward"},
    ["J"] = {"mzJ`z", "String concatenation"},
    ["p"] = {"p`]", "Edit fix"},

    -- Search helpers
    ["n"] = {"nzzzv", "Center text on search"},
    ["N"] = {"Nzzzv", "Center text on search"},

    -- Fugitive
    ["<leader>gs"] = {"<cmd> Git <CR>", "Fugitive"},
    ["<leader>gb"] = {"<cmd> Git blame <CR>", "Fugitive"},
    ["<leader>gh"] = {"<cmd> diffget //2 <CR>", "Fugitive"},
    ["<leader>gl"] = {"<cmd> diffget //3 <CR>", "Fugitive"},
  },

  x = {
    -- Move test
    ["K"] = {"<cmd> move '<-2<CR>gv=gv", "  Move text down"},
    ["J"] = {"<cmd> move '>+1<CR>gv=gv", "  Move text up"},
  },

  v = {
    ["v"] = {"<Esc>y$gv", "Copy visual line "},
    ["y"] = {"y`]", "Edit fix"},
    ["p"] = {"p`]", "Edit fix"},
  },

}

M.nvimtree = {
  n = {
    ["<leader>n"] = {"<cmd> NvimTreeToggle <CR>", "Toggle nvimtree"},
    ["<leader>e"] = {"<cmd> NvimTreeFocus <CR>", "Focus nvimtree"},
  },
}

return M

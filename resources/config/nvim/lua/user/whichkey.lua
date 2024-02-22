local M = {
  "folke/which-key.nvim",
}

function M.config()
  local mappings = {
    q = { "<cmd>confirm q<CR>", "Quit" },
    -- h = { "<cmd>nohlsearch<CR>", "NOHL" },
    h = { name = "+Harpoon" },
    v = { "<cmd>vsplit<CR>", "Split" },
    L = { "<cmd>Lazy<CR>", "Lazy" },
    b = { name = "+Buffers" },
    d = { name = "+Debug" },
    f = { name = "+Find" },
    g = { name = "+Git",
      h = { name = "+Diffview" }
    },
    l = { name = "+LSP" },
    -- p = { name = "+Plugins" },
    -- t = { name = "+Test" },
    n = { name = "+Noice"},
    a = {
      name = "Tab",
      n = { "<cmd>$tabnew<cr>", "New Empty Tab" },
      N = { "<cmd>tabnew %<cr>", "New Tab" },
      o = { "<cmd>tabonly<cr>", "Only" },
      h = { "<cmd>-tabmove<cr>", "Move Left" },
      l = { "<cmd>+tabmove<cr>", "Move Right" },
    },
    -- T = { name = "Treesitter" },
    x = { name = "+Diagnostics" },
    m = { name = "+Metals" },
  }

  local which_key = require "which-key"
  which_key.setup {
    plugins = {
      marks = true,
      registers = true,
      spelling = {
        enabled = true,
        suggestions = 20,
      },
      presets = {
        operators = false,
        motions = false,
        text_objects = false,
        windows = false,
        nav = false,
        z = false,
        g = false,
      },
    },
    window = {
      border = "rounded",
      position = "bottom",
      padding = { 2, 2, 2, 2 },
    },
    ignore_missing = true,
    show_help = false,
    show_keys = true,
    disable = {
      buftypes = {},
      filetypes = { "TelescopePrompt" },
    },
  }

  local opts = {
    mode = "n", -- NORMAL mode
    prefix = "<leader>",
  }

  which_key.register(mappings, opts)
end

return M

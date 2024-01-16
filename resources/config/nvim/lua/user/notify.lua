local M = {
  "rcarriga/nvim-notify",
}

M.config = function()

  local wk = require "which-key"
  wk.register {
    ["<leader>un"] = { "<cmd>lua require 'notify'.dismiss({ silent = true, pending = true })<cr>", "Dismiss all Notifications"},
  }

  require("notify").setup {
    config = {
      timeout = 3000,
    max_height = function()
      return math.floor(vim.o.lines * 0.75)
    end,
    max_width = function()
      return math.floor(vim.o.columns * 0.75)
    end,
    on_open = function(win)
      vim.api.nvim_win_set_config(win, { zindex = 100 })
    end,
    },
  }
end

return M

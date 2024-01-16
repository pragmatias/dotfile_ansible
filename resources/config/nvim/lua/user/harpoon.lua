local M = {
  "ThePrimeagen/harpoon",
  event = "VeryLazy",
  dependencies = {
    { "nvim-lua/plenary.nvim" },
  },
}

function M.config()
  local keymap = vim.keymap.set
  local opts = { noremap = true, silent = true }

  -- local wk = require "which-key"
  -- wk.register {
  --   ["<s-m>"] = { "<cmd>lua require('user.harpoon').mark_file()<cr>", "Mark file" },
  --   ["<TAB>"] = { "<cmd>lua require('harpoon.ui').toggle_quick_menu()<cr>", "Buffer Quick Menu" },
  -- }
  keymap("n", "<s-m>", "<cmd>lua require('user.harpoon').mark_file()<cr>", opts)
  keymap("n", "<TAB>", "<cmd>lua require('harpoon.ui').toggle_quick_menu()<cr>", opts)
end

function M.mark_file()
  require("harpoon.mark").add_file()
  vim.notify "󱡅  marked file"
end

return M

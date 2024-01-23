local M = {
  "NeogitOrg/neogit",
  dependencies = {
    "nvim-lua/plenary.nvim",         -- required
    "sindrets/diffview.nvim",        -- optional - Diff integration
    "nvim-telescope/telescope.nvim", -- optional
  },
}


function M.config()
  local wk = require "which-key"
  wk.register {
    ["<leader>ge"] = { "<cmd>Neogit<cr>", "Neogit Open" },
  }

  require("neogit").setup({
    disable_commit_confirmation = true,
    integrations = {
        diffview = true,
        telescope = true,
    },
    mappings = {
        status = {
            ["<ESC>"] = "Close",
        },
    },
  })
end

return M

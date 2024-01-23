local M = {
  "sindrets/diffview.nvim",
  dependencies = { "nvim-tree/nvim-web-devicons" },
}

function M.config()
  local wk = require "which-key"
  wk.register {
    ["<leader>ghd"] = { "<cmd>lua require('diffview').open({'--', '%'})<cr>", "Open current file diff" },
    ["<leader>ghD"] = { "<cmd>lua require('diffview').open({})<cr>", "Open diff" },
  }

  local diffview = require('diffview')
  local diffview_actions = require('diffview.actions')

  require('diffview').setup({
    keymaps = {
      view = {
        {
          "n",
          "[x",
          diffview_actions.prev_conflict,
          { desc = "In the merge-tool: jump to the previous conflict" },
        },
        {
          "n",
          "]x",
          diffview_actions.next_conflict,
          { desc = "In the merge-tool: jump to the next conflict" },
        },
        {
          "n",
          "q",
          function()
            diffview.close()
          end,
          { desc = "Close diffview" },
        },
      },
      file_panel = {
        {
          "n",
          "q",
          function()
            diffview.close()
          end,
          { desc = "Close diffview" },
        },
        {
          "n",
          "<ESC>",
          function()
            diffview.close()
          end,
          { desc = "Close diffview" },
        },
      },
      file_history_panel = {
        {
          "n",
          "q",
          function()
            diffview.close()
          end,
          { desc = "Close diffview" },
        },
        {
          "n",
          "<ESC>",
          function()
            diffview.close()
          end,
          { desc = "Close diffview" },
        },
      },
    },
  })

end


return M

local M = {
  "ThePrimeagen/harpoon",
  event = "VeryLazy",
  dependencies = {
    { "nvim-lua/plenary.nvim" },
  },
}

function M.config()
  local wk = require "which-key"
  wk.register {
    ["<leader>ho"] = { "<cmd>lua require 'harpoon.ui'.toggle_quick_menu()<cr>", "Open Quick Menu" },
    ["<leader>ha"] = { "<cmd>lua require 'user.harpoon'.add_file()<cr>", "Add/Mark File" },
    ["<leader>hr"] = { "<cmd>lua require 'user.harpoon'.rm_file()<cr>", "Remove File" },
    ["<leader>hc"] = { "<cmd>lua require 'user.harpoon'.clear_all()<cr>", "Clear All Files" },
    ["<leader>h&"] = { "<cmd>lua require 'harpoon.ui'.nav_file(1)<cr>", "Go to File 1" },
    ["<leader>hé"] = { "<cmd>lua require 'harpoon.ui'.nav_file(2)<cr>", "Go to File 2" },
    ["<leader>h\""] = { "<cmd>lua require 'harpoon.ui'.nav_file(3)<cr>", "Go to File 3" },
    ["<leader>h'"] = { "<cmd>lua require 'harpoon.ui'.nav_file(4)<cr>", "Go to File 4" },
    ["<leader>h("] = { "<cmd>lua require 'harpoon.ui'.nav_file(5)<cr>", "Go to File 5" },
    ["<leader>h-"] = { "<cmd>lua require 'harpoon.ui'.nav_file(6)<cr>", "Go to File 6" },
    ["<leader>hè"] = { "<cmd>lua require 'harpoon.ui'.nav_file(7)<cr>", "Go to File 7" },
    ["<leader>h_"] = { "<cmd>lua require 'harpoon.ui'.nav_file(8)<cr>", "Go to File 8" },
    ["<leader>hç"] = { "<cmd>lua require 'harpoon.ui'.nav_file(9)<cr>", "Go to File 9" },
    ["<leader>hà"] = { "<cmd>lua require 'harpoon.ui'.nav_file(0)<cr>", "Go to File 10" },
  }

end

function M.add_file()
  require("harpoon.mark").add_file()
  vim.notify "harpoon 󱡅  marked file"
end

function M.rm_file()
  require("harpoon.mark").rm_file()
  vim.notify "harpoon 󱡅  removed marked file"
end

function M.clear_all()
  require("harpoon.mark").clear_all()
  vim.notify "harpoon 󱡅  cleared all files"
end


return M

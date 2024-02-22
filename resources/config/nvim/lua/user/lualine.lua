local M = {
  "nvim-lualine/lualine.nvim",
  lazy = false,
  -- event = "VeryLazy",
  init = function()
    vim.g.lualine_laststatus = vim.o.laststatus
    if vim.fn.argc(-1) > 0 then
      -- set an empty statusline till lualine loads
      vim.o.statusline = " "
    else
      -- hide the statusline on the starter page
      vim.o.laststatus = 0
    end
  end,
}

M.config = function()
  local icons = require("user.icons")

  vim.o.laststatus = vim.g.lualine_laststatus

  local function bsp_status()
    local bsp_var = vim.api.nvim_get_var("metals_bsp_status")
    if bsp_var then
      return "bsp: " .. bsp_var
    end
  end

  local harpoon = require("harpoon.mark")
  local function harpoon_component()
    local total_marks = harpoon.get_length()

    if total_marks == 0 then
      return ""
    end

    local current_mark = "—"

    local mark_idx = harpoon.get_current_index()
    if mark_idx ~= nil then
      current_mark = tostring(mark_idx)
    end

    return string.format("󱡅 %s/%d", current_mark, total_marks)
  end

  -- local function diff_source()
  --   local gitsigns = vim.b.gitsigns_status_dict
  --   if gitsigns then
  --     return {
  --       added = gitsigns.added,
  --       modified = gitsigns.changed,
  --       removed = gitsigns.removed,
  --     }
  --   end
  -- end

  require("lualine").setup({
    options = {
      theme = "catppuccin",
      globalstatus = true,
      disabled_filetypes = { statusline = { "dashboard", "alpha", "starter", "lazy" } },
    },
    sections = {
      lualine_a = { "mode" },
      lualine_b = { "branch" , harpoon_component},

      lualine_c = {
        {
          "diagnostics",
          symbols = {
            error = icons.diagnostics.Error,
            warn = icons.diagnostics.Warn,
            info = icons.diagnostics.Info,
            hint = icons.diagnostics.Hint,
          },
        },
        { "filetype", icon_only = true, separator = "", padding = { left = 1, right = 0 } },
      },
      lualine_x = {
        -- stylua: ignore
        -- {
        --   require("noice").api.status.command.get,
        --   cond = require("noice").api.status.command.has,
        -- },
        -- stylua: ignore
        -- {
        --   require("noice").api.status.mode.get,
        --   cond = require("noice").api.status.mode.has,
        -- },
        -- stylua: ignore
        {
          function() return "  " .. require("dap").status() end,
          cond = function () return package.loaded["dap"] and require("dap").status() ~= "" end,
        },
        {
          require("lazy.status").updates,
          cond = require("lazy.status").has_updates,
        },
        { bsp_status },
        {
          "diff",
          symbols = {
            added = icons.git.added,
            modified = icons.git.modified,
            removed = icons.git.removed,
          },
          -- { diff_source },
        },
      },
      lualine_y = {
      },
      lualine_z = {
        { "progress", separator = " ", padding = { left = 1, right = 0 } },
        { "location", padding = { left = 0, right = 1 } },
        -- function()
          -- return " " .. os.date("%R")
        -- end,
      },
    },
    extensions = { "nvim-tree", "fugitive", "mason", "lazy", "fzf", "trouble" },
  })

end

return M

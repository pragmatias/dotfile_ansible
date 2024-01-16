local M = {
 "folke/noice.nvim",
  event = "VeryLazy",
  opts = {
    -- add any options here
  },
  dependencies = {
    -- if you lazy-load any plugin below, make sure to add proper `module="..."` entries
    "MunifTanjim/nui.nvim",
    -- OPTIONAL:
    --   `nvim-notify` is only needed, if you want to use the notification view.
    --   If not available, we use `mini` as the fallback
    -- "rcarriga/nvim-notify",
  },
  keys = {
    { "<S-Enter>", function() require("noice").redirect(vim.fn.getcmdline()) end, mode = "c", desc = "Redirect Cmdline" },
    { "<c-f>", function() if not require("noice.lsp").scroll(4) then return "<c-f>" end end, silent = true, expr = true, desc = "Scroll forward", mode = {"i", "n", "s"} },
    { "<c-b>", function() if not require("noice.lsp").scroll(-4) then return "<c-b>" end end, silent = true, expr = true, desc = "Scroll backward", mode = {"i", "n", "s"}},
  },
}


function M.config()
  local wk = require "which-key"
  wk.register {
    [ "<leader>nl"] = { "<cmd>lua require 'noice'.cmd('last')<cr>", "Noice Last Message" },
    [ "<leader>nh"] = { "<cmd>lua require 'noice'.cmd('history')<cr>", "Noice History" },
    [ "<leader>na"] = { "<cmd>lua require 'noice'.cmd('all')<cr>", "Noice All" },
    [ "<leader>nd"] = { "<cmd>lua require 'noice'.cmd('dismiss')<cr>", "Dismiss All" },
  }
  require("noice").setup({
    notify = {
      enable = true,
      view = "mini",
    },
    messages = {
      enable = true,
      view = "mini",
      view_error = "mini",
      view_warn = "mini",
    },
    lsp = {
      progress = { enable = false } ,
      -- override markdown rendering so that **cmp** and other plugins use **Treesitter**
      override = {
        ["vim.lsp.util.convert_input_to_markdown_lines"] = true,
        ["vim.lsp.util.stylize_markdown"] = true,
        ["cmp.entry.get_documentation"] = true,
      },
    },
    routes = {
      {
        view = "vsplit",
        filter = { kind = "sniprun", },
      },
      {
        filter = {
          event = "msg_show",
          any = {
            { find = "%d+L, %d+B" },
            { find = "; after #%d+" },
            { find = "; before #%d+" },
          },
        },
        view = "mini",
      },
      { filter = { event = "msg_show", find = "line %d+ of %d+" }, skip = true },
    },
    -- you can enable a preset for easier configuration
    presets = {
      bottom_search = true, -- use a classic bottom cmdline for search
      command_palette = true, -- position the cmdline and popupmenu together
      long_message_to_split = true, -- long messages will be sent to a split
      inc_rename = true, -- enables an input dialog for inc-rename.nvim
      lsp_doc_border = false, -- add a border to hover docs and signature help
    },
  })
end



return M

local M = {
  "mfussenegger/nvim-dap",
  dependencies = {
    { "rcarriga/nvim-dap-ui" },
    { "nvim-neotest/nvim-nio" },
  }
}


M.config = function()
  local wk = require "which-key"
  wk.register {
    ["<leader>dB"] = { "<cmd>lua require 'dap'.set_breakpoint(vim.fn.input('Breakpoint condition: '))<cr>", "Breakpoint Condition" },
    ["<leader>db"] = { "<cmd>lua require 'dap'.toggle_breakpoint()<cr>", "Toggle Breakpoint" },
    ["<leader>dc"] = { "<cmd>lua require 'dap'.continue()<cr>", "Continue" },
    ["<leader>da"] = { "<cmd>lua require 'dap'.continue({ before = get_args })<cr>", "Run with Args" },
    ["<leader>dC"] = { "<cmd>lua require 'dap'.run_to_cursor()<cr>", "Run to Cursor" },
    ["<leader>dg"] = { "<cmd>lua require 'dap'.goto_()<cr>", "Go to line (no execute)" },
    ["<leader>di"] = { "<cmd>lua require 'dap'.step_into()<cr>", "Step Into" },
    ["<leader>dj"] = { "<cmd>lua require 'dap'.down()<cr>", "Down" },
    ["<leader>dk"] = { "<cmd>lua require 'dap'.up()<cr>", "Up" },
    ["<leader>dl"] = { "<cmd>lua require 'dap'.run_last()<cr>", "Run Last" },
    ["<leader>do"] = { "<cmd>lua require 'dap'.step_out()<cr>", "Step Out" },
    ["<leader>dO"] = { "<cmd>lua require 'dap'.step_over()<cr>", "Step Over" },
    ["<leader>dp"] = { "<cmd>lua require 'dap'.pause()<cr>", "Pause" },
    ["<leader>dr"] = { "<cmd>lua require 'dap'.repl.toggle()<cr>", "Toggle REPL" },
    ["<leader>ds"] = { "<cmd>lua require 'dap'.session()<cr>", "Session" },
    ["<leader>dt"] = { "<cmd>lua require 'dap'.terminate()<cr>", "Terminate" },
    ["<leader>dw"] = { "<cmd>lua require 'dap.ui.widgets'.hover()<cr>", "Widgets" },
  }
    -- { "<leader>dB", function() require("dap").set_breakpoint(vim.fn.input('Breakpoint condition: ')) end, desc = "Breakpoint Condition" },
    -- { "<leader>db", function() require("dap").toggle_breakpoint() end, desc = "Toggle Breakpoint" },
    -- { "<leader>dc", function() require("dap").continue() end, desc = "Continue" },
    -- { "<leader>da", function() require("dap").continue({ before = get_args }) end, desc = "Run with Args" },
    -- { "<leader>dC", function() require("dap").run_to_cursor() end, desc = "Run to Cursor" },
    -- { "<leader>dg", function() require("dap").goto_() end, desc = "Go to line (no execute)" },
    -- { "<leader>di", function() require("dap").step_into() end, desc = "Step Into" },
    -- { "<leader>dj", function() require("dap").down() end, desc = "Down" },
    -- { "<leader>dk", function() require("dap").up() end, desc = "Up" },
    -- { "<leader>dl", function() require("dap").run_last() end, desc = "Run Last" },
    -- { "<leader>do", function() require("dap").step_out() end, desc = "Step Out" },
    -- { "<leader>dO", function() require("dap").step_over() end, desc = "Step Over" },
    -- { "<leader>dp", function() require("dap").pause() end, desc = "Pause" },
    -- { "<leader>dr", function() require("dap").repl.toggle() end, desc = "Toggle REPL" },
    -- { "<leader>ds", function() require("dap").session() end, desc = "Session" },
    -- { "<leader>dt", function() require("dap").terminate() end, desc = "Terminate" },
    -- { "<leader>dw", function() require("dap.ui.widgets").hover() end, desc = "Widgets" },

  -- Debug settings if you're using nvim-dap
  local dap = require("dap")

  dap.configurations.scala = {
    {
      type = "scala",
      request = "launch",
      name = "RunOrTest",
      metals = {
        runType = "runOrTestFile",
        --args = { "firstArg", "secondArg", "thirdArg" }, -- here just as an example
      },
    },
    {
      type = "scala",
      request = "launch",
      name = "Test Target",
      metals = {
        runType = "testTarget",
      },
    },
  }

  wk.register {
    ["<leader>du"] = { "<cmd>lua require 'dapui'.toggle({ })<cr>", "Dap UI" },
    ["<leader>de"] = { "<cmd>lua require 'dapui'.eval()<cr>", "Dap Eval", mode = {"n", "v"} },
  }
  -- setup dap config by VsCode launch.json file
  -- require("dap.ext.vscode").load_launchjs()
  -- local dap = require("dap")
  local dapui = require("dapui")
  dapui.setup()

end


return M

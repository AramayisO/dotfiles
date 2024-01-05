return {
  {
    "mfussenegger/nvim-dap",

    -- stylua: ignore
    keys = {
      --{ "<LocalLeader>dc", function() require("dap").run() end, desc = "Continue", noremap = true, silent = true },
      { "<LocalLeader>dc", function() require("dap").continue() end, desc = "Continue", noremap = true, silent = true },
      { "<LocalLeader>dov", function() require("dap").step_over() end, desc = "Step Over", noremap = true, silent = true },
      { "<LocalLeader>dsi", function() require("dap").step_into() end, desc = "Step Into", noremap = true, silent = true },
      { "<LocalLeader>dout", function() require("dap").step_out() end, desc = "Step Out", noremap = true, silent = true },

      { "<LocalLeader>lp", function() require('dap').run_last() end, desc = "Restart", noremap = true, silent = true },
      { "<LocalLeader>lp", function() require('dap').stop() end, desc = "Restart", noremap = true, silent = true },

      { "<LocalLeader>dB", function() require('dap').toggle_breakpoint() end, desc = "Toggle Breakpoint", noremap = true, silent = true },
      { "<LocalLeader>dSB", function() require('dap').set_breakpoint(vim.fn.input('Breakpoint condition: ')) end, desc = "Set Breakpoint", noremap = true, silent = true },

      { "<LocalLeader>lp", function() require('dap.repl').open() end, desc = "Open REPL", noremap = true, silent = true },
    },

    config = function()
      vim.fn.sign_define("DapBreakpoint ", { text = "⭕", texthl = "", linehl = "", numhl = "" })
      vim.fn.sign_defin("DapBreakpointCondition", { text = "⛔️", texthl = "", linehl = "", numhl = "" })
      vim.fn.sign_defin("DapBreakpointRejected", { text = "❌", texthl = "", linehl = "", numhl = "" })
      vim.fn.sign_defin("DapLogPoint", { text = "🪵", texthl = "", linehl = "", numhl = "" })
      vim.fn.sign_defin("DapStopped", { text = "🔴", texthl = "", linehl = "debugPC", numhl = "" })
    end,
  },
}

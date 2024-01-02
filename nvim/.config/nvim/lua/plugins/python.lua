return {
  {
    "nvim-treesitter/nvim-treesitter",
    opts = function(_, opts)
      if type(opts.ensure_installed) == "table" then
        vim.list_extend(opts.ensure_installed, { "ninja", "python", "rst", "toml" })
      end
    end,
  },
  {
    "williamboman/mason.nvim",
    opts = function(_, opts)
      opts.ensure_installed = opts.ensure_installed or {}
      vim.list_extend(opts.ensure_installed, { "debugpy" })
    end,
  },
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        pyright = {},
        ruff_lsp = {
          keys = {
            {
              "<leader>co",
              function()
                vim.lsp.buf.code_action({
                  apply = true,
                  context = {
                    only = { "source.organizeImports" },
                    diagnostics = {},
                  },
                })
              end,
              desc = "Organize Imports",
            },
          },
        },
      },
      setup = {
        ruff_lsp = function()
          require("lazyvim.util").lsp.on_attach(function(client, _)
            if client.name == "ruff_lsp" then
              -- Disable hover in favor of Pyright
              client.server_capabilities.hoverProvider = false
            end
          end)
        end,
      },
    },
  },
  {
    "nvim-neotest/neotest-python",
  },
  {
    "mfussenegger/nvim-dap",
    dependencies = {
      "mfussenegger/nvim-dap-python",
    -- stylua: ignore
    keys = {
      { "<leader>dPt", function() require('dap-python').test_method() end, desc = "Debug Method", ft = "python" },
      { "<leader>dPc", function() require('dap-python').test_class() end, desc = "Debug Class", ft = "python" },
    },
      config = function()
        -- local path = require("mason-registry").get_package("debugpy"):get_install_path()
        local path = "./.venv/bin/debugpy"
        --require("dap-python").setup(path .. "/venv/bin/python")
        require("dap-python").setup("./.venv/bin/python")
        table.insert(require("dap").configurations.python, {
          name = "Python: Webserver",
          type = "python",
          request = "launch",
          program = "./src/run.py",
          console = "integratedTerminal",
          justMyCode = false,
          env = {
            ENV_FILE_PATH = "./envs/.env.debug",
            BASTION_HOST_SSH_PKEY_PATH = "./.venv/AntonV2Bastion.pem",
          },
        })
      end,
    },
  },
  {
    "linux-cultist/venv-selector.nvim",
    cmd = "VenvSelect",
    opts = function(_, opts)
      if require("lazyvim.util").has("nvim-dap-python") then
        opts.dap_enabled = true
      end
      return vim.tbl_deep_extend("force", opts, {
        name = {
          "venv",
          ".venv",
          "env",
          ".env",
        },
      })
    end,
    keys = { { "<leader>cv", "<cmd>:VenvSelect<cr>", desc = "Select VirtualEnv" } },
  },
  --{
  --  "nvim-neotest/neotest",
  --  --optional = true,
  --  dependencies = {
  --    "nvim-neotest/neotest-python",
  --  },
  --  opts = {
  --    adapters = {
  --      ["neotest-python"] = {
  --        -- Here you can specify the settings for the adapter, i.e.
  --        -- runner = "pytest",
  --        -- python = ".venv/bin/python",
  --      },
  --    },
  --  },
  --},
}

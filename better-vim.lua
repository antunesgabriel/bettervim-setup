return {
  plugins = {
    "folke/todo-comments.nvim",
    "f-person/git-blame.nvim",
    "akinsho/toggleterm.nvim",
    "mfussenegger/nvim-dap",
    {
      "olexsmir/gopher.nvim",
      dependecies = {
        "nvim-lua/plenary.nvim",
        "nvim-treesitter/nvim-treesitter",
      },
      ft = "go",
      build = function()
        vim.cmd [[silent! GoInstallDeps]]
      end,
      opts = {}
    },
    "windwp/nvim-ts-autotag",
    "norcalli/nvim-colorizer.lua",
    "ishan9299/nvim-solarized-lua"
  },
  theme = {
    name = "rose-pine",
  },
  formatters = {
    -- gofmt = {},
    goimports = {},
    gofumpt = {},
    goimports_reviser = {},
    golines = {},
    yamlfmt = {},
    eslint_d = {},
    fixjson = {},
    mdformat = {},
    prettier = {},
    taplo = {},
    terrafmt = {}
  },
  lsps = {
    prismals = {},
    gopls = {
      settings = {
        gopls = {
          hints = {
            assignVariableTypes = true,
            compositeLiteralFields = true,
            compositeLiteralTypes = true,
            constantValues = true,
            functionTypeParameters = true,
            parameterNames = true,
            rangeVariableTypes = true,
          },
          completeUnimported = true,
          usePlaceholders = true,
          analyses = {
            unusedparams = true,
          },
        },

      }
    },
    yamlls = {},
    dockerls = {},
    docker_compose_language_service = {},
    sqlls = {},
    jsonls = {},
    marksman = {},
    terraformls = {},
    tailwindcss = {},
    taplo = {}
  },
  flags = {
    format_on_save = true,
  },
  nvim_tree = {
    filters = {
      dotfiles = false,
      custom = { '^.git$' },
      git_ignored = false,
    },
    view = {
      width = 40,
    },
  },
  telescope = {},
  hooks = {
    after_setup = function()
      require("better-vim.custom")
    end,
  },
  unload_plugins = { "noice" },
}

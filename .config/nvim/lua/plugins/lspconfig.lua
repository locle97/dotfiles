-- lsp stuff
return {
  {
    "williamboman/mason.nvim",
    cmd = { "Mason", "MasonInstall", "MasonInstallAll", "MasonUpdate" },
    opts = function()
      return require "configs.mason"
    end,
    config = function(_, opts)
      if opts.ensure_installed then
        vim.api.nvim_echo({
          { "\n   ensure_installed has been removed! use M.mason.pkgs table in your chadrc.\n", "WarningMsg" },
          { "   https://github.com/NvChad/ui/blob/v2.5/lua/nvconfig.lua#L85 \n\n", "FloatBorder" },
          {
            "   MasonInstallAll will automatically install all mason packages of tools configured in your plugins. \n",
            "healthSuccess",
          },
          { "   Currently supported plugins are : lspconfig, nvim-lint, conform. \n", "Added" },
          { "   So dont add them in your chadrc as MasonInstallAll automatically installs them! \n", "Changed" },
        }, false, {})
      end

      require("mason").setup(opts)
    end,
  },

  {
    "neovim/nvim-lspconfig",
    event = "User FilePost",
    config = function()
      return require "configs.lspconfig"
    end,
  },

  -- load luasnips + cmp related in insert mode only
  {
    "hrsh7th/nvim-cmp",
    event = "InsertEnter",
    dependencies = {
      {
        -- snippet plugin
        "L3MON4D3/LuaSnip",
        dependencies = "rafamadriz/friendly-snippets",
        opts = { history = true, updateevents = "TextChanged,TextChangedI" },
        config = function(_, opts)
          require("luasnip").config.set_config(opts)
          require "configs.luasnip"
        end,
      },

      -- autopairing of (){}[] etc
      {
        "windwp/nvim-autopairs",
        opts = {
          fast_wrap = {},
          disable_filetype = { "TelescopePrompt", "vim" },
        },
        config = function(_, opts)
          require("nvim-autopairs").setup(opts)

          -- setup cmp for autopairs
          local cmp_autopairs = require "nvim-autopairs.completion.cmp"
          require("cmp").event:on("confirm_done", cmp_autopairs.on_confirm_done())
        end,
      },

      -- cmp sources plugins
      {
        "saadparwaiz1/cmp_luasnip",
        "hrsh7th/cmp-nvim-lua",
        "hrsh7th/cmp-nvim-lsp",
        "hrsh7th/cmp-buffer",
        "hrsh7th/cmp-path",
      },
    },
    opts = function()
      return require "configs.cmp"
    end,
  }
}

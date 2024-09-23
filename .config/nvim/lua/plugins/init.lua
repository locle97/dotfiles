return {
    {
        "zbirenbaum/copilot-cmp",
        event = { "InsertEnter", "LspAttach" },
        fix_pairs = true,
        config = function()
            require("copilot_cmp").setup()
        end,
    },
    {
        "zbirenbaum/copilot.lua",
        cmd = "Copilot",
        event = "InsertEnter",
        config = function()
            require("copilot").setup {
                suggestion = { enabled = false },
                panel = { enabled = false },
            }
        end,
    },
    { "neo4j-contrib/cypher-vim-syntax", event = "BufEnter" },
    {
        "echasnovski/mini.nvim",
        event = "BufEnter",
        config = function()
            require("mini.cursorword").setup {}
        end,
    },

    {
        "f-person/git-blame.nvim",
        event = "BufEnter",
    },

    {
        "ahmedkhalf/project.nvim",
        lazy = false,
        config = function()
            require("project_nvim").setup {}
        end,
    },

    {
        "akinsho/toggleterm.nvim",
        lazy = false,
        config = function()
            require("toggleterm").setup {
                open_mapping = [[<c-\>]],
                direction = "float",
                shade_terminals = true,
            }
        end,
    },

    { "kdheepak/lazygit.nvim",           lazy = false },
    {
        "stevearc/conform.nvim",
        -- event = 'BufWritePre', -- uncomment for format on save
        opts = require "configs.conform",
    },

    -- These are some examples, uncomment them if you want to see them work!
    {
        "neovim/nvim-lspconfig",
        config = function()
            require "configs.lspconfig"
        end,
    },

    -- {
    -- 	"nvim-treesitter/nvim-treesitter",
    -- 	opts = {
    -- 		ensure_installed = {
    -- 			"vim", "lua", "vimdoc",
    --      "html", "css"
    -- 		},
    -- 	},
    -- },
}

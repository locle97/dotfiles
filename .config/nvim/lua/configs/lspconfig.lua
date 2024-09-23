-- load defaults i.e lua_lsp
require("nvchad.configs.lspconfig").defaults()

local lspconfig = require "lspconfig"

-- EXAMPLE
local servers = { "html", "cssls", "omnisharp", "jsonls", "pylsp" }
local nvlsp = require "nvchad.configs.lspconfig"

-- lsps with default config
for _, lsp in ipairs(servers) do
  lspconfig[lsp].setup {
    on_attach = nvlsp.on_attach,
    on_init = nvlsp.on_init,
    capabilities = nvlsp.capabilities,
  }
end

-- configuring single server, example: typescript
lspconfig.ts_ls.setup {
  on_attach = nvlsp.on_attach,
  on_init = nvlsp.on_init,
  capabilities = nvlsp.capabilities,
}

local pid = vim.fn.getpid()
local util = require "lspconfig/util"

lspconfig.omnisharp.setup {
  on_attach = nvlsp.on_attach,
  capabilities = nvlsp.capabilities,
  cmd = {
    "/home/lpl212757/.local/share/nvim/mason/packages/omnisharp/omnisharp",
    "--languageserver",
    "--hostPID",
    tostring(pid),
  },
  root_dir = util.root_pattern("*.sln", "*.csproj"),
}

lspconfig.emmet_language_server.setup{}

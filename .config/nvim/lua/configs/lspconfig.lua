-- load defaults i.e lua_lsp
local lspconfig = require "lspconfig"

-- EXAMPLE
local servers = { "lua_ls" }

-- lsps with default config
for _, lsp in ipairs(servers) do
  lspconfig[lsp].setup { }
end

require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")

-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")
-- n, v, i, t = mode names

-- Lspconfig Code action
map("n", "<C-y>", function() vim.lsp.buf.code_action() end , { desc = "lsp code_action", })
map("n", "<C-.>", function() vim.lsp.buf.code_action() end , { desc = "lsp code_action", })

-- User config
-- LSPConfig
map("n", "gD", function() vim.lsp.buf.declaration() end, { desc = "lsp declaration", noremap=true, silent=true })
map("n", "gd", function() vim.lsp.buf.definition() end, { desc = "lsp definition", noremap = true, silent = true })
map("n", "K", function() vim.lsp.buf.hover() end, { desc = "lsp hover", })
map("n", "gi", function() require("telescope.builtin").lsp_implementations() end, { desc = "lsp implementation", noremap = true, silent = true })
map("n", "gr", function() require("telescope.builtin").lsp_references() end, { desc = "lsp references", noremap = true, silent = true})
map("n", "go", function() require("telescope.builtin").lsp_document_symbols() end, { desc = "lsp document symbols", noremap = true, silent = true})
map("n", "<C-y>", function() vim.lsp.buf.code_action() end, { desc = "lsp code_action", })
map("n", "<F2>", function() vim.lsp.buf.rename() end, { desc = "lsp rename", })
map("n", "<leader>fm", function() vim.lsp.buf.format { async = true } end, { desc = "LSP formatting", })
map("v", "<leader>fm", function() vim.lsp.buf.format { async = true } end, { desc = "lsp formatting", })
map("n", "[d", function() vim.diagnostic.goto_prev() end, { desc = "goto prev" })
map("n", "]d", function() vim.diagnostic.goto_next() end, { desc = "goto_next" })
map("n", "<leader>q", function() vim.diagnostic.setloclist() end, { desc = "diagnostic setloclist", })
map("n", "<leader>f", function() vim.diagnostic.open_float() end, { desc = "floating diagnostic", })

map("n", "<leader>q", function() vim.diagnostic.setloclist() end, { desc = "Diagnostic setloclist", })
map("n", "<C-p>", "<cmd> Telescope find_files <CR>", { desc = "find files" })
map("n", "<leader>fp", "<cmd> Telescope projects <CR>", { desc = "Project" })

-- Nvim tmux navigator config
map('n', "<C-h>", "<cmd> NvimTmuxNavigateLeft<CR>", { desc = "Navigate left" })
map('n', "<C-j>", "<cmd> NvimTmuxNavigateDown<CR>", { desc = "Navigate down" })
map('n', "<C-k>", "<cmd> NvimTmuxNavigateUp<CR>", { desc = "Navigate up" })
map('n', "<C-l>", "<cmd> NvimTmuxNavigateRight<CR>", { desc = "Navigate right" })

-- End user config

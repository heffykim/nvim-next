vim.pack.add {
  "https://github.com/mason-org/mason-lspconfig.nvim",
  "https://github.com/neovim/nvim-lspconfig",
  "https://github.com/mason-org/mason.nvim"
}

require("mason").setup()
require("mason-lspconfig").setup()

-- placing the builtin LSP config here for organization reasons.
vim.lsp.config("*", {
  capabilities = vim.lsp.protocol.make_client_capabilities(),
})

vim.lsp.enable({
  'lua_ls'
})

vim.diagnostic.config({virtual_text = true})


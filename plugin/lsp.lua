vim.pack.add({
	"https://github.com/mason-org/mason-lspconfig.nvim",
	"https://github.com/neovim/nvim-lspconfig",
	"https://github.com/mason-org/mason.nvim",
})

require("mason").setup()
require("mason-lspconfig").setup()

-- placing the builtin LSP config here for organization reasons.
vim.lsp.config("*", {
	capabilities = vim.lsp.protocol.make_client_capabilities(),
})

vim.lsp.enable({
  "lua_ls",
  "ruff",
  "pyrefly",
  "isort",
  "flake8",
  "black",
  "biome",
  "vtsls",
	"rust-analyzer",
  "org"
})

vim.diagnostic.config({ virtual_text = true })

vim.keymap.set('n', 'grd', '<cmd>lua vim.lsp.buf.definition()<cr>', { desc = "go to definition" })





vim.api.nvim_create_autocmd('LspAttach', {
  group = vim.api.nvim_create_augroup('my.lsp', {}),
  callback = function(ev)
    local client = assert(vim.lsp.get_client_by_id(ev.data.client_id))
    if client:supports_method('textDocument/implementation') then
      -- Create a keymap for vim.lsp.buf.implementation ...
    end

    -- Enable auto-completion. Note: Use CTRL-Y to select an item. |complete_CTRL-Y|
    if client:supports_method('textDocument/completion') then
      -- Optional: trigger autocompletion on EVERY keypress. May be slow!
      -- local chars = {}; for i = 32, 126 do table.insert(chars, string.char(i)) end
      -- client.server_capabilities.completionProvider.triggerCharacters = chars

      vim.lsp.completion.enable(true, client.id, ev.buf, { autotrigger = true })
    end

    -- Auto-format ("lint") on save.
    -- Usually not needed if server supports "textDocument/willSaveWaitUntil".
    -- Disabled: conform.nvim handles format-on-save (see plugin/formatter.lua).
    -- Leaving both enabled caused LSP formatters (vtsls/biome LSP) to overwrite
    -- conform's output, ignoring biome.json.
    -- if not client:supports_method('textDocument/willSaveWaitUntil')
    --     and client:supports_method('textDocument/formatting') then
    --   vim.api.nvim_create_autocmd('BufWritePre', {
    --     group = vim.api.nvim_create_augroup('my.lsp', { clear = false }),
    --     buffer = ev.buf,
    --     callback = function()
    --       vim.lsp.buf.format({ bufnr = ev.buf, id = client.id, timeout_ms = 1000 })
    --     end,
    --   })
    -- end
  end,
})


vim.opt.complete:append('o')
-- vim.opt.completeopt = { 'menuone', 'noselect' }

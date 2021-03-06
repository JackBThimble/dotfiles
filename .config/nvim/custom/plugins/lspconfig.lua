local M = {}

M.setup_lsp = function(attach, capabilities)
  local lspconfig = require "lspconfig"

  --lspservers with default config
  local servers = { "html", "gopls", "cssls", "tsserver", "sumneko_lua", "jsonls", "emmet_ls" }

  for _, lsp in ipairs(servers) do 
    lspconfig[lsp].setup {
      on_attach = attach,
      capabilities = capabilities,
    }
  end
end

return M

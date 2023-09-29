local lspconfig = require "lspconfig"
local configs = require "lspconfig.configs"
local capabilities = vim.lsp.protocol.make_client_capabilities()
configs.phpstan.setup {
  default_config = {
    enabled = false,
  },
}
lspconfig.phpstan.setup { capabilities = capabilities }

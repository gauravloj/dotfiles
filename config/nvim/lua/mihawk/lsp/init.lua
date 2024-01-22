local status_ok, _ = pcall(require, "lspconfig")
if not status_ok then
  return
end

require "mihawk.lsp.configs"
require("mihawk.lsp.handlers").setup()
-- require "mihawk.lsp.null-ls"

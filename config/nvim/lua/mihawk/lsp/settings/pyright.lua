-- https://github.com/python-lsp/python-lsp-server/blob/develop/CONFIGURATION.md

return {
  -- cmd = { ... },
  -- filetypes = { ... },
  -- capabilities = {},
  settings = {
    python = {
      analysis = {
        autoImportCompletions = true,
        autoSearchPaths = true,
        diagnosticMode = "workspace",
        useLibraryCodeForTypes = true
      }
    }
  },
}

-- https://github.com/python-lsp/python-lsp-server/blob/develop/CONFIGURATION.md

return {
  -- cmd = { ... },
  -- filetypes = { ... },
  -- capabilities = {},
  settings = {
    pylsp = {
      -- pylsp.plugins.rope_autoimport.code_actions.enabled
      plugins = {
        plugins = {
          rope_autoimport = {
            enabled = true,
            code_actions = {
              enabled = true,
            },
            completions = {
              enabled = true,
            }
          },
        },
        pycodestyle = {
          ignore = { 'W391' },
          maxLineLength = 100
        }
      }
    }
  },
}

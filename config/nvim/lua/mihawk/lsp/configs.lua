local lspconfig = require("lspconfig")

-- check https://github.com/neovim/nvim-lspconfig/blob/master/doc/server_configurations.md
-- for list of server configurations
-- other useful options
-- "phpactor" --  https://github.com/phpactor/phpactor
-- pylsp -- https://github.com/python-lsp/python-lsp-server
-- terraform_lsp -- https://github.com/juliosueiras/terraform-lsp
-- "terraformls" -- https://github.com/hashicorp/terraform-ls
-- asm_lsp -- https://github.com/bergercookie/asm-lsp
-- awk_ls -- https://github.com/Beaglefoot/awk-language-server/
-- "clojure_lsp", --https://github.com/clojure-lsp/clojure-lsp
-- "yamlls",
--   "dockerls",
-- "emmet_language_server", -- https://github.com/olrtg/emmet-language-server
-- These servers should be installed manually
local servers = {
  "bashls",
  -- "clojure_lsp",
  "clangd",
  --"efm",
  "emmet_ls", -- https://github.com/aca/emmet-ls
  "eslint",   -- https://github.com/hrsh7th/vscode-langservers-extracted
  "html",     -- https://github.com/hrsh7th/vscode-langservers-extracted
  "jsonls",   -- https://github.com/hrsh7th/vscode-langservers-extracted
  "lua_ls",   -- https://github.com/luals/lua-language-server
  "marksman", -- https://github.com/artempyanykh/marksman
  "pyright",  -- https://github.com/microsoft/pyright
  -- "tailwindcss", -- https://github.com/tailwindlabs/tailwindcss-intellisense
  "tsserver", -- https://github.com/typescript-language-server/typescript-language-server
  -- "vimls",       -- https://github.com/iamcco/vim-language-server
  -- "zls",         -- https://github.com/zigtools/zls
}

for _, server in pairs(servers) do
  local opts = {
    on_attach = require("mihawk.lsp.handlers").on_attach,
    capabilities = require("mihawk.lsp.handlers").capabilities,
  }
  local has_custom_opts, server_custom_opts = pcall(require, "mihawk.lsp.settings." .. server)

  if has_custom_opts then
    opts = vim.tbl_deep_extend("keep", server_custom_opts, opts)
  end
  lspconfig[server].setup(opts)
end

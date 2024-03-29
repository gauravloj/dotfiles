local M = {}

-- TODO: backfill this to template
M.setup = function()
  local signs = {
    { name = "DiagnosticSignError", text = "" },
    { name = "DiagnosticSignWarn", text = "" },
    { name = "DiagnosticSignHint", text = "" },
    { name = "DiagnosticSignInfo", text = "" },
  }

  for _, sign in ipairs(signs) do
    vim.fn.sign_define(sign.name, { texthl = sign.name, text = sign.text, numhl = "" })
  end

  local config = {
    -- disable virtual text
    virtual_text = false,
    -- show signs
    signs = {
      active = signs,
    },
    update_in_insert = true,
    underline = true,
    severity_sort = true,
    float = {
      focusable = false,
      style = "minimal",
      border = "rounded",
      source = "always",
      header = "",
      prefix = "",
    },
  }

  vim.diagnostic.config(config)

  vim.lsp.handlers["textDocument/hover"] = vim.lsp.with(vim.lsp.handlers.hover, {
    border = "rounded",
  })

  vim.lsp.handlers["textDocument/signatureHelp"] = vim.lsp.with(vim.lsp.handlers.signature_help, {
    border = "rounded",
  })
end


-- Helper function for creating keymaps
function nnoremap(rhs, lhs, bufopts, desc)
  bufopts.desc = desc
  vim.keymap.set("n", rhs, lhs, bufopts)
end

local function lsp_keymaps(bufnr)
  local opts = { noremap = true, silent = true, buffer = bufnr }

  -- TODO: Add more keymaps in the end
  nnoremap("gD", "<cmd>lua vim.lsp.buf.declaration()<CR>", opts, "Go to declaration")
  nnoremap("gd", "<cmd>lua vim.lsp.buf.definition()<CR>", opts, "Go to definition")
  nnoremap("K", "<cmd>lua vim.lsp.buf.hover()<CR>", opts, "Hover")
  nnoremap("gi", "<cmd>lua vim.lsp.buf.implementation()<CR>", opts, "Go to implementation")
  nnoremap("<C-k>", "<cmd>lua vim.lsp.buf.signature_help()<CR>", opts, "Signature help")
  -- nnoremap("<leader>rn", "<cmd>lua vim.lsp.buf.rename()<CR>", opts)
  nnoremap("gr", "<cmd>lua vim.lsp.buf.references()<CR>", opts, "Go to references")
  -- nnoremap("<leader>ca", "<cmd>lua vim.lsp.buf.code_action()<CR>", opts)
  -- nnoremap("<leader>f", "<cmd>lua vim.diagnostic.open_float()<CR>", opts)
  nnoremap("[d", '<cmd>lua vim.diagnostic.goto_prev({ border = "rounded" })<CR>', opts, "Go to previous diagnostic")
  nnoremap("gl", '<cmd>lua vim.diagnostic.open_float({ border = "rounded" })<CR>', opts, "Open diagnostic float")
  nnoremap("]d", '<cmd>lua vim.diagnostic.goto_next({ border = "rounded" })<CR>', opts, "Go to next diagnostic")
  nnoremap("<leader>q", "<cmd>lua vim.diagnostic.setloclist()<CR>", opts, "Set location list")

  -- nnoremap('gl', vim.diagnostic.open_float, opts, "Open diagnostic float")
  -- nnoremap('[d', vim.diagnostic.goto_prev, opts, "Go to previous diagnostic")
  -- nnoremap(']d', vim.diagnostic.goto_next, opts, "Go to next diagnostic")

  -- TODO: setup formatting on save
  -- vim.cmd([[ command! Format execute 'lua vim.lsp.buf.formatting()' ]])
end

M.on_attach = function(client, bufnr)
  local server_names = { "tsserver", "jsonls", "lua_ls", "html" }
  for index, value in ipairs(server_names) do
    if client.name == value then
      client.server_capabilities.document_formatting = false
      break
    end
  end

  if client.name == "zls" then
    vim.api.nvim_buf_set_option(bufnr, 'omnifunc', 'v:lua.vim.lsp.omnifunc')
  end
  -- if client.name == "tsserver" then
  -- 	client.resolved_capabilities.document_formatting = false
  -- end
  lsp_keymaps(bufnr)
end

local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities.textDocument.completion.completionItem.snippetSupport = true

local status_ok, cmp_nvim_lsp = pcall(require, "cmp_nvim_lsp")
if not status_ok then
  return
end

M.capabilities = cmp_nvim_lsp.default_capabilities(capabilities)

return M

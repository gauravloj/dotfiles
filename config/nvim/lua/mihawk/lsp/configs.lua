local status_ok, lsp_installer = pcall(require, "nvim-lsp-installer")
if not status_ok then
	return
end

local lspconfig = require("lspconfig")

-- check https://github.com/neovim/nvim-lspconfig/blob/master/doc/server_configurations.md
-- for list of server configurations
local servers = {
	"bashls",
	"dockerls",
	"eslint",
	"html",
	"jsonls",
	"marksman",
	"pyright",
	"sumneko_lua",
	"tailwindcss",
	"terraformls",
	"tsserver",
	"vimls",
	"yamlls",
}

lsp_installer.setup({
	ensure_installed = servers,
})

for _, server in pairs(servers) do
	local opts = {
		on_attach = require("mihawk.lsp.handlers").on_attach,
		capabilities = require("mihawk.lsp.handlers").capabilities,
	}
	local has_custom_opts, server_custom_opts = pcall(require, "mihawk.lsp.settings." .. server)
	if has_custom_opts then
		opts = vim.tbl_deep_extend("force", server_custom_opts, opts)
	end
	lspconfig[server].setup(opts)
end

-- [[ Basic Autocommands ]]
--  See `:help lua-guide-autocommands`

-- local command = vim.api.nvim_create_user_command

--   command('LspWorkspaceAdd', function()
--     vim.lsp.buf.add_workspace_folder()
--   end, {desc = 'Add folder to workspace'})
--
--   command('LspWorkspaceList', function()
--     vim.notify(vim.inspect(vim.lsp.buf.list_workspace_folders()))
--   end, {desc = 'List workspace folders'})
--
--   command('LspWorkspaceRemove', function()
--     vim.lsp.buf.remove_workspace_folder()
--   end, {desc = 'Remove folder from workspace'})

local auto_cmd = vim.api.nvim_create_autocmd

-- au BufNewFile,BufFilePre,BufRead *.md set filetype=markdown
auto_cmd("FileType", {
	group = vim.api.nvim_create_augroup("_markdown", { clear = true }),
	pattern = "markdown",
	callback = vim.schedule_wrap(function()
		vim.bo.syntax = "markdown"
		vim.bo.wrap = true
		vim.bo.spell = true
	end),
})

auto_cmd("FileType", {
	group = vim.api.nvim_create_augroup("_git", { clear = true }),
	pattern = "gitcommit",
	callback = vim.schedule_wrap(function()
		vim.bo.wrap = true
		vim.bo.spell = true
	end),
})

-- auto_cmd('BufWritePre', {
--   group = vim.api.nvim_create_augroup("_lsp", { clear = true }),
--   pattern = '*',
--   callback = vim.schedule_wrap(function()
--     vim.lsp.buf.format { async = false }
--   end)
-- })

-- [[
--
--  augroup _zsh
--    autocmd!
--    autocmd BufWinEnter *.zsh :set filetype=sh
--  augroup en
-- ]]
auto_cmd("BufWinEnter", {
	group = vim.api.nvim_create_augroup("_zsh", { clear = true }),
	pattern = "*.zsh",
	callback = vim.schedule_wrap(function()
		vim.bo.filetype = "sh"
	end),
})

-- [[
-- augroup _auto_resize
--   autocmd!
--   autocmd VimResized * tabdo wincmd =
-- augroup end
-- ]]
auto_cmd("VimResized", {
	group = vim.api.nvim_create_augroup("_auto_resize", { clear = true }),
	pattern = "*",
	callback = vim.schedule_wrap(function()
		vim.cmd([[tabdo wincmd =]])
	end),
})

-- Highlight when yanking (copying) text
--  Try it with `yap` in normal mode
--  See `:help vim.hl.on_yank()`
auto_cmd("TextYankPost", {
	desc = "Highlight when yanking (copying) text",
	group = vim.api.nvim_create_augroup("_highlight-yank", { clear = true }),
	callback = function()
		vim.hl.on_yank({ higroup = "Visual", timeout = 200 })
	end,
})

vim.cmd([[
  augroup _general_settings
    autocmd!
    autocmd FileType qf,help,man,lspinfo nnoremap <silent> <buffer> q :close<CR>
    autocmd BufWinEnter * :set formatoptions-=cro
    autocmd FileType qf set nobuflisted nowrap
  augroup end

]])

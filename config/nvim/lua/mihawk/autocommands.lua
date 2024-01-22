local command = vim.api.nvim_create_user_command

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



vim.cmd([[
  augroup _general_settings
    autocmd!
    autocmd FileType qf,help,man,lspinfo nnoremap <silent> <buffer> q :close<CR>
    autocmd TextYankPost * silent!lua require('vim.highlight').on_yank({higroup = 'Visual', timeout = 200})
    autocmd BufWinEnter * :set formatoptions-=cro
    autocmd FileType qf set nobuflisted nowrap
  augroup end

  augroup _git
    autocmd!
    autocmd FileType gitcommit setlocal wrap
    autocmd FileType gitcommit setlocal spell
  augroup end

  augroup _markdown
    autocmd!
    autocmd FileType markdown setlocal wrap
    autocmd FileType markdown setlocal spell
  augroup end

  augroup _auto_resize
    autocmd!
    autocmd VimResized * tabdo wincmd =
  augroup end

  augroup _lsp
    autocmd!
    autocmd BufWritePre * lua vim.lsp.buf.format {async = false}
  augroup end

  augroup _zsh
    autocmd!
    autocmd BufWinEnter *.zsh :set filetype=sh
  augroup en

  augroup _ahn
    autocmd!
    autocmd VimEnter */ahn_web/**,*/ahn_front/** nnoremap <C-CR> <CMD>!make buildprod<CR>
    autocmd VimEnter */ahn_web/**,*/ahn_front/** set iskeyword+=:
  augroup end
]])

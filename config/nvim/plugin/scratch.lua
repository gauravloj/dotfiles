function Scratch()
  vim.cmd('vnew')
  vim.cmd('setlocal nobuflisted buftype=nofile bufhidden=wipe noswapfile')
end

vim.api.nvim_create_user_command('Scratch', Scratch, {})

-- Add key mappings
vim.api.nvim_set_keymap('n', '<leader>ss', ':Scratch<CR>', { noremap = true, silent = true })

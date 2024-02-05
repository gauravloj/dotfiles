-- print("this is stackmap")

-- print(vim.inspect(package.loaded, { depth = 1 }))

local M = {}

--[[
require('stackmap').push('test', 'n', {
  ['<leader>gb'] = ':echo "mapped gb"<cr>',
  ['<leader>bg'] = ':echo "unmapped"<cr>',
})
]]
M.push = function(name, mode, mapping)
  local stack = vim.g.stackmap_stack or {}
  stack[name] = mapping
  vim.g.stackmap_stack = stack
end

M.pop = function(name)
  local stack = vim.g.stackmap_stack or {}
  stack[name] = nil
  vim.g.stackmap_stack = stack
end

return M

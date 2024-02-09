-- print("this is stackmap")

-- print(vim.inspect(package.loaded, { depth = 1 }))

local M = {}


local find_mapping = function(maps, lhs)
  for _, map in ipairs(maps) do
    if map.lhs == lhs then
      return map
    end
  end
end


--[[
require('stackmap').push('test', 'n', {
  ['<leader>gb'] = ':echo "mapped gb"<cr>',
  ['<leader>bg'] = ':echo "unmapped"<cr>',
})
]]

M._stack = {}

M.push = function(name, mode, mapping)
  local mode_mapps = vim.api.nvim_get_keymap(mode)

  local existing = {}
  for lhs, rhs in pairs(mapping) do
    local map = find_mapping(mode_mapps, lhs)
    if map then
      table.insert(existing, map)
    end
  end
  M._stack[name] = existing

  for lhs, rhs in pairs(mapping) do
    vim.keymap.set(mode, lhs, rhs, { noremap = true, silent = true })
  end
end

M.pop = function(name)
  local stack = vim.g.stackmap_stack or {}
  stack[name] = nil
  vim.g.stackmap_stack = stack
end

return M

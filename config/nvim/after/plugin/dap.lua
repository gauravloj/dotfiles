local status_ok_vt, virtual_text = pcall(require, "nvim-dap-virtual-text")
if not status_ok_vt then
	return
end

local status_ok_ui, dapui = pcall(require, "dapui")
if not status_ok_ui then
	return
end

local status_ok_dap, dap = pcall(require, "dap")
if not status_ok_ui then
	return
end

-- Helper function for creating keymaps
function nnoremap(rhs, lhs, bufopts, desc)
	bufopts.desc = desc
	vim.keymap.set("n", rhs, lhs, bufopts)
  end

local opts = { noremap = true, silent = true }


-- Set keymaps for debugging
nnoremap("<leader>dc", dap.continue, opts, "Continue")
nnoremap("<leader>do", dap.step_over, opts, "Step over")
nnoremap("<leader>di", dap.step_into, opts, "Step into")
nnoremap("<leader>dO", dap.step_out, opts, "Step out")
nnoremap("<leader>dr", dap.repl.toggle, opts, "Toggle REPL window")
nnoremap('<leader>df', '<cmd>Telescope dap frames<cr>', opts, "List frames")
nnoremap('<leader>dh', '<cmd>Telescope dap commands<cr>', opts, "List commands")
nnoremap('<leader>dd', dap.disconnect, opts, "Disconnect")
nnoremap('<leader>dt', dap.terminate, opts, "Terminate")
nnoremap("<leader>dl", dap.run_last, opts, "Run last")
nnoremap('<leader>dv', function() require"dap.ui.widgets".hover() end, opts, "Variables")
nnoremap('<leader>ds', function() local widgets=require"dap.ui.widgets";widgets.centered_float(widgets.scopes) end, opts, "Scopes")
nnoremap("<leader>du", dapui.toggle, opts, "Run last")


nnoremap("<leader>db", dap.toggle_breakpoint, opts, "Toggle breakpoint")
-- nnoremap("<leader>bl", "<cmd>lua require'dap'.set_breakpoint(nil, nil, vim.fn.input('Log point message: '))<cr>", opts, "Set log point")
nnoremap("<leader>dB", ":lua require('dap').set_breakpoint(vim.fn.input('Breakpoint Condition: '))<CR>", opts, "Set conditional breakpoint")
nnoremap('<leader>de', dap.clear_breakpoints, opts, "Clear breakpoints")
nnoremap('<leader>da', '<cmd>Telescope dap list_breakpoints<cr>', opts, "List breakpoints")

local status_ok_ptn, dap_python = pcall(require, "dap-python")
if not status_ok_ptn then
	return
end
local status_ok, jdtls = pcall(require, "jdtls")
if not status_ok then
  vim.notify("Failed to load jdtls")
  return
end


virtual_text.setup()
dap_python.setup()
dapui.setup()
jdtls.setup_dap({ hotcodereplace = 'auto' })

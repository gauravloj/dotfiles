local status_ok_vt, virtual_text = pcall(require, "nvim-dap-virtual-text")
if not status_ok_vt then
	return
end
local status_ok_ptn, dap_python = pcall(require, "dap-python")
if not status_ok_ptn then
	return
end
local status_ok_ui, dapui = pcall(require, "dapui")
if not status_ok_ui then
	return
end

virtual_text.setup()
dap_python.setup()
dapui.setup()

local status_ok, catpp = pcall(require, "catppuccin")
if not status_ok then
	vim.cmd([[
    try
      colorscheme onedark
    catch /^Vim\%((\a\+)\)\=:E185/
      colorscheme default
      set background=dark
    endtry
  ]])
	return
end

catpp.setup({
	flavour = "mocha", -- latte, frappe, macchiato, mocha
	background = { -- :h background
		light = "latte",
		dark = "mocha",
	},
	transparent_background = false, -- disables setting the background color.
	show_end_of_buffer = false, -- shows the '~' characters after the end of buffers
	term_colors = false, -- sets terminal colors (e.g. `g:terminal_color_0`)
	dim_inactive = {
		enabled = false, -- dims the background color of inactive window
		shade = "dark",
		percentage = 0.15, -- percentage of the shade to apply to the inactive window
	},
	no_italic = false, -- Force no italic
	no_bold = false, -- Force no bold
	no_underline = false, -- Force no underline
	styles = { -- Handles the styles of general hi groups (see `:h highlight-args`):
		comments = { "italic" }, -- Change the style of comments
		conditionals = { "italic" },
		loops = {},
		functions = {},
		keywords = {},
		strings = {},
		variables = {},
		numbers = {},
		booleans = {},
		properties = {},
		types = {},
		operators = {},
	},
	color_overrides = {},
	custom_highlights = {},
	integrations = {
		cmp = true,
		gitsigns = true,
		nvimtree = true,
		treesitter = true,
		notify = false,
		mini = false,
		native_lsp = {
			enabled = true,
			virtual_text = {
				errors = { "italic" },
				hints = { "italic" },
				warnings = { "italic" },
				information = { "italic" },
			},
			underlines = {
				errors = { "underline" },
				hints = { "underline" },
				warnings = { "underline" },
				information = { "underline" },
			},
			inlay_hints = {
				background = true,
			},
		},
		telescope = {
			enabled = true,
			-- style = "nvchad"
		},
		which_key = true,
		-- dap = {
		--   enabled = true,
		--   enable_ui = true, -- enable nvim-dap-ui
		-- }

		-- For more plugins integrations please scroll down (https://github.com/catppuccin/nvim#integrations)
	},
})

-- You NEED to override nvim-dap's default highlight groups, AFTER requiring nvim-dap
-- require("dap")
--
-- local sign = vim.fn.sign_define
--
-- sign("DapBreakpoint", { text = "●", texthl = "DapBreakpoint", linehl = "", numhl = ""})
-- sign("DapBreakpointCondition", { text = "●", texthl = "DapBreakpointCondition", linehl = "", numhl = ""})
-- sign("DapLogPoint", { text = "◆", texthl = "DapLogPoint", linehl = "", numhl = ""})

-- setup must be called before loading
vim.cmd.colorscheme("catppuccin")

-- setting catppuccin theme
vim.cmd([[
try
  colorscheme onedark
catch /^Vim\%((\a\+)\)\=:E185/
  colorscheme default
  set background=dark
endtry
]])

-- onedark sets the termguicolors option.
-- Henve resetting it here
if os.getenv("TERM_PROGRAM") == "Apple_Terminal" then
	vim.opt.termguicolors = false
else
	vim.opt_global.termguicolors = true
end

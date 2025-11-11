--[[
    After understanding a bit more about Lua, you can use `:help lua-guide` as a
    reference for how Neovim integrates Lua.
    - :help lua-guide
    - (or HTML version): https://neovim.io/doc/user/lua-guide.html

If you experience any errors while trying to install kickstart, run `:checkhealth` for more info.

--]]

require("mihawk.options")
require("mihawk.keymaps")
require("mihawk.config.scratch")
require("mihawk.config.colorscheme")
require("mihawk.lazy")
require("mihawk.autocommands")

-- The line beneath this is called `modeline`. See `:help modeline`
-- vim: ts=2 sts=2 sw=2 et

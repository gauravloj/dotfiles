  -- NOTE: Plugins can specify dependencies.
  --
  -- The dependencies are proper plugin specifications as well - anything
  -- you do for a plugin at the top level, you can do for a dependency.
  --
  -- Use the `dependencies` key to specify the dependencies of a particular plugin
return {
  {
    'nvim-telescope/telescope.nvim',
    -- tag = '0.1.8',
    dependencies = {
      'nvim-lua/plenary.nvim',

      { -- If encountering errors, see telescope-fzf-native README for installation instructions
        'nvim-telescope/telescope-fzf-native.nvim',

        -- `build` is used to run some command when the plugin is installed/updated.
        -- This is only run then, not every time Neovim starts up.
        build = 'make',

        -- `cond` is a condition used to determine whether this plugin should be
        -- installed and loaded.
        cond = function()
          return vim.fn.executable 'make' == 1
        end,
      },
    },
    config = function()
      require('telescope').setup {
        extensions = {
          fzf = {}
        },
      }

      require('telescope').load_extension('fzf')

      vim.keymap.set("n", "<space>fh", require('telescope.builtin').help_tags)
      vim.keymap.set("n", "<space>ff", require('telescope.builtin').find_files)
      vim.keymap.set("n", "<space>en", function()
        require('telescope.builtin').find_files { cwd = vim.fn.stdpath("config") }
      end,{ desc = '[S]earch [N]eovim files' } )
      vim.keymap.set("n", "<space>ep", function()
        require('telescope.builtin').find_files { cwd = vim.fs.joinpath(vim.fn.stdpath("data"), "lazy") , { desc = '[S]earch [P]ackage files' }}
      end)


      vim.keymap.set('n', '<leader>fk', require('telescope.builtin').keymaps, { noremap = true, silent = true, desc = '[S]earch [K]eymaps' })
      vim.keymap.set('n', '<leader>fb', require('telescope.builtin').builtin, { noremap = true, silent = true, desc = '[S]earch [S]elect Telescope' })
      -- vim.keymap.set('n', '<leader>sw', require('telescope.builtin').grep_string, { noremap = true, silent = true, desc = '[S]earch current [W]ord' })
      vim.keymap.set('n', '<leader>fg', require('telescope.builtin').live_grep, { noremap = true, silent = true, desc = '[S]earch by [G]rep' })
      vim.keymap.set('n', '<leader>fd', require('telescope.builtin').diagnostics, { noremap = true, silent = true, desc = '[S]earch [D]iagnostics' })
      -- vim.keymap.set('n', '<leader>sr', require('telescope.builtin').resume, { noremap = true, silent = true, desc = '[S]earch [R]esume' })
      -- vim.keymap.set('n', '<leader>s.', require('telescope.builtin').oldfiles, { noremap = true, silent = true, desc = '[S]earch Recent Files ("." for repeat)' })
      -- vim.keymap.set('n', '<leader><leader>', require('telescope.builtin').buffers, { noremap = true, silent = true, desc = '[ ] Find existing buffers' })



    --   require "config.telescope.multigrep".setup()
    end
  }
}

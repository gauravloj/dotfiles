return {
  {
    "hrsh7th/nvim-cmp",
    lazy = false,
    priority = 100,
    dependencies = {
      "hrsh7th/cmp-nvim-lsp",
      "hrsh7th/cmp-path",
      "hrsh7th/cmp-buffer",
      { "L3MON4D3/LuaSnip", build = "make install_jsregexp" },
    },
    config = function()
      local cmp = require "cmp"

      cmp.setup {
        sources = {
          -- { name = "supermaven" },
          { name = "lazy_dev" },
          { name = "nvim_lsp" },
          { name = "path" },
          { name = "buffer" },
        },
        mapping = {
          ["<C-n>"] = cmp.mapping.select_next_item { behavior = cmp.SelectBehavior.Insert },
          ["<C-p>"] = cmp.mapping.select_prev_item { behavior = cmp.SelectBehavior.Insert },
          ["<C-y>"] = cmp.mapping(
            cmp.mapping.confirm {
              behavior = cmp.ConfirmBehavior.Insert,
              select = true,
            },
            { "i", "c" }
          ),
        },

        -- Enable luasnip to handle snippet expansion for nvim-cmp
        snippet = {
          expand = function(args)
            vim.snippet.expand(args.body)
          end,
        },

        formatting = {
          fields = { "abbr", "kind", "menu" },
          expandable_indicator = true,
        },

      }
    end,


    -- 'saghen/blink.cmp',
    -- dependencies = 'rafamadriz/friendly-snippets',

    -- opts = {
      --       keymap = { preset = 'default' },
      -- 
      --       appearance = {
        --         use_nvim_cmp_as_default = true,
        --         nerd_font_variant = 'mono'
        --       },
        -- 
        --       signature = { enabled = true }
        --     },
      }
    }


return {
 { "catppuccin/nvim", name = "catppuccin", priority = 1000 }, -- You can also add new plugins here as well:
 { 'rose-pine/neovim', name = 'rose-pine', priority = 1000 },
 { 'aspeddro/pandoc.nvim', name = 'pandoc', priority = 1000},
 {"ellisonleao/glow.nvim", config = true, cmd = "Glow"},
 {'ekickx/clipboard-image.nvim', name = 'clipboard-image', cmd = "PasteImg"},
 {'tpope/vim-repeat', name = 'vim-repeat', priority = 1000, lazy = false},
 {"tpope/vim-surround", name = 'vim-surround', priority = 1000, lazy = false},
 {"preservim/vim-pencil", name = 'pencil', priority = 1000, cmd = "PencilToggle"},
 {'tricktux/pomodoro.vim', name = 'pomo', cmd = "PomodoroStart"},
 {'glepnir/template.nvim', cmd = {'Template','TemProject'}, config = function()
    require('template').setup({
        temp_dir = '~/Documents/Notes/templates',
        author = 'KRLH',
        email = 'krlh.blupine@proton.me'
         })
      end},
 {'Furkanzmc/zettelkasten.nvim',
    name = 'zettelkasten',
    cmd = 'ZkNew',
    config = function()
        require('zettelkasten').setup({
          id_format = '%Y%m%d%H%M',
          id_pattern = '%d+%d+%d+%d+%d+%d+%d+%d+%d+%d+%d+%d+%d+',
          notes_path = '~/Documents/Notes'
      })
      end,
  },
 {'jakewvincent/mkdnflow.nvim',
        name = 'mkdnflow',
        lazy = false,
        ext = 'md',
        config = function()
            require('mkdnflow').setup({
                mappings = {
                   MkdnEnter = {{'i', 'n', 'v'}, '<CR>'}
                },
                links = {
                    transform_explicit = function(input)
                                            return('../'..input)
                                            end,
                    transform_implicit = function(input)
                                              return(string.gsub(input, '../', './'))
                                              end,
                    name_is_source = true,
                    conceal = true,
                    }
                -- Config goes here; leave blank for defaults
            })
        end,
 }
 -- Add plugins, the lazy syntax
 -- "andweeb/presence.nvim",
  -- {
  --   "ray-x/lsp_signature.nvim",
  --   event = "BufRead",
  --   config = function()
  --     require("lsp_signature").setup()
  --   end,
  -- },
}

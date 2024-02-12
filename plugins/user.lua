return {
 { "catppuccin/nvim", name = "catppuccin", priority = 1000 }, -- You can also add new plugins here as well:
 { 'rose-pine/neovim', name = 'rose-pine', priority = 1000 },
 { 'aspeddro/pandoc.nvim', name = 'pandoc', priority = 1000 },
 { "ellisonleao/glow.nvim", config = true, cmd = "Glow" },
 { 'dfendr/clipboard-image.nvim', name = 'clipboard-image', lazy=false },
 { 'tpope/vim-repeat', name = 'repeat', priority = 1000, lazy = false },
 { "tpope/vim-surround", name = 'surround', priority = 1000, lazy = false },
 { 'tricktux/pomodoro.vim', name = 'pomo', cmd = "PomodoroStart" },
 { 'DAmesberger/sc-im.nvim', name = 'sc-im', lazy = false},
 { "williamboman/mason-lspconfig.nvim", lazy = false},
 { "neovim/nvim-lspconfig", lazy = false},
 { 'glepnir/template.nvim', cmd = {'Template','TemProject'}, config = function()
    require('template').setup({
      temp_dir = '~/Documents/Notes/templates',
      author = 'KRLH',
      email = 'krlh.blupine@proton.me'
    })
  end },
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
                                            return("./"..input)
                                            end,
                    -- transform_implicit = function(input)
                                            -- if input:match('%d%d%-%d%d-d%d%d%d%') then
                                              -- return('journals/'..input)
                                            -- else
                                              -- return(input)
                                            -- end
                                          -- end,
                    name_is_source = false,
                    conceal = true,
                    },
                modules = {
                    yaml = true,
                    },
                -- Config goes here; leave blank for defaults
            })
        end,
 },
 { "edluffy/hologram.nvim",
  lazy = false,
  config = function()
    if not vim.g.neovide then
      require('hologram').setup{
       auto_display = true -- WIP automatic markdown image display, may be prone to breaking
      }
    -- Put anything you want to happen only in Neovide here
    end
    end
  },
 {"someone-stole-my-name/yaml-companion.nvim",
   lazy = false,
   requires = {
      { "neovim/nvim-lspconfig" },
      { "nvim-lua/plenary.nvim" },
      { "nvim-telescope/telescope.nvim" },
    },
  },
 {
  "nvim-telescope/telescope.nvim",
    lazy = false,
    dependencies = { -- add a new dependency to telescope that is our new plugin
    "nvim-telescope/telescope-media-files.nvim",
    "someone-stole-my-name/yaml-companion.nvim"
    },
  -- the first parameter is the plugin specification
  -- the second is the table of options as set up in Lazy with the `opts` key
  config = function(plugin, opts)
    -- run the core AstroNvim configuration function with the options table
    require("plugins.configs.telescope")(plugin, opts)

    -- require telescope and load extensions as necessary
    local telescope = require "telescope"
    telescope.load_extension "yaml_schema"
    telescope.load_extension "media_files"
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

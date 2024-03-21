return {
 {
  "nvim-telescope/telescope.nvim",
    lazy = false,
    dependencies = { -- add a new dependency to telescope that is our new plugin
    "SalOrak/whaler",
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
    telescope.setup({
    extensions = {
        whaler = { 
        directories = {{path="~/Projects",alias="Projects"},
              {path="/media/ghArchive/Writing/notes",alias="Notes"},
              {path="~/.config/",alias="Config"}},
        oneoff_directories = {
              {path="~/.dotfiles", alias="Dotfiles"}
            },
        file_explorer = "neotree",
    },
    }
    })
    telescope.load_extension "yaml_schema"
    telescope.load_extension "media_files"
    telescope.load_extension "whaler"
  end,
 }
}

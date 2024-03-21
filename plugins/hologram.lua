return {
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
  }
}

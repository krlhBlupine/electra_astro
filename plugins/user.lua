return {
  { 'aspeddro/pandoc.nvim', name = 'pandoc', priority = 1000 },
  { "ellisonleao/glow.nvim", config = true, cmd = "Glow" },
  { 'dfendr/clipboard-image.nvim', name = 'clipboard-image', lazy=false },
  { 'tpope/vim-repeat', name = 'repeat', priority = 1000, lazy = false },
  { "tpope/vim-surround", name = 'surround', priority = 1000, lazy = false },
  { 'tricktux/pomodoro.vim', name = 'pomo', cmd = "PomodoroStart" },
  { 'DAmesberger/sc-im.nvim', name = 'sc-im', lazy = false},
  { "williamboman/mason-lspconfig.nvim", lazy = false},
  { "neovim/nvim-lspconfig", lazy = false},
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

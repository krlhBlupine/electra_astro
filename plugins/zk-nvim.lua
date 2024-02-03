return {
  {'zk-org/zk-nvim', name = 'zk', lazy = false,
  config = function ()
   require('zk').setup({
        picker = 'select'
      })
  end,
  }
}

return {
  'webhooked/kanso.nvim',
  priority = 1000,
  config = function()
    require('kanso').load 'ink'
  end,
}

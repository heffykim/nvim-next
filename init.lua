require('options')
require('keymaps')
require('autocmds')

require('vim._core.ui2').enable({
  enable = true,
  msg = {
    targets = 'cmd',
    cmd = {
      height = 0.5
    },
    dialog = {
      height = 0.5
    },
    msg = {
      height = 0.5,
      timeout = 4000
    }
  }
})

vim.pack.add({ 'https://github.com/webhooked/kanso.nvim' })
vim.pack.add({ 'https://github.com/rebelot/kanagawa.nvim' })
vim.cmd("colorscheme kanagawa")

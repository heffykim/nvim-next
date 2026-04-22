vim.pack.add({ "https://github.com/nvim-mini/mini.nvim" })
vim.pack.add({ "https://github.com/stevearc/oil.nvim" })

require('mini.icons').setup({})

require("oil").setup({
  default_file_explorer = true,
  columns = {
    "icon",
  },
  view_options = {
    show_hidden = true,
  },
})

vim.keymap.set("n", "-", "<CMD>Oil<CR>", { desc = "Open parent directory" })

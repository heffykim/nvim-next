vim.pack.add({ "https://github.com/ibhagwan/fzf-lua" })

local fzflua = require("fzf-lua")

fzflua.setup()

vim.keymap.set("n", "<leader>ff", "<cmd>FzfLua files<CR>", { desc = "[f]ind [f]ile" })
vim.keymap.set("n", "<leader>fg", "<cmd>FzfLua live_grep<CR>", { desc = "[f]ind live [g]rep" })
vim.keymap.set("n", "<leader>fw", "<cmd>FzfLua grep_cword<CR>", { desc = "[f]ind [w]ord" })
vim.keymap.set("n", "<leader>fd", "<cmd>FzfLua diagnostics_document<CR>", { desc = "[f]ind [d]iagnostics" })
vim.keymap.set("n", "<leader>fr", "<cmd>FzfLua resume<CR>", { desc = "[f]ind [r]esume" })
vim.keymap.set("n", "<leader><leader>", "<cmd>FzfLua buffers<CR>", { desc = "[f]ind buffers" })

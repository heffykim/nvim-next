-- lazy loaded
vim.schedule(function()
	vim.pack.add({ "https://github.com/folke/which-key.nvim" })

	local wk = require("which-key")

	wk.setup({
		preset = "helix",
	})

	wk.add({
		{ "<leader>b", group = "[b]uffer" },
		{ "<leader>c", group = "[c]onform" },
		{ "<leader>f", group = "[f]zflua" },
		{ "<leader>g", group = "diff[git]" },
		{ "<leader>t", group = "[t]ab" },
		{ "<leader>u", group = "[u]i" },
		{ "<leader>x", group = "fi[x] list" },
	})

	vim.keymap.set("n", "<leader>?", function()
		require("which-key").show({ global = false })
	end, { desc = "Buffer Local Keymaps (which-key)" })
end)

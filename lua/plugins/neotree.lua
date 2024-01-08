local M = {
	{
		"nvim-neo-tree/neo-tree.nvim",
		branch = "v3.x",
		dependencies = {
			"nvim-lua/plenary.nvim",
			"nvim-tree/nvim-web-devicons",
			"MunifTanjim/nui.nvim",
		},
		config = function()
			vim.keymap.set("n", "<C-e>", "<CMD>Neotree toggle<CR>")
			vim.keymap.set("n", "<C-E>", "<CMD>Neotree focus<CR>")
			vim.keymap.set("n", "<C-b>", ":Neotree buffers reveal float<CR>", {})
		end,
	}
}
return M

local M = {
	{
		"nvim-lualine/lualine.nvim",
		dependencies = {"nvim-tree/nvim-web-devicons"},
		config = function()
			local lualine = require("lualine")
			local lazy_status = require("lazy.status")

			lualine.setup({
				options = {
					theme = 'onedark',
					component_separators = '',
					section_separators = {
						left = '',
						right = ''
					}
				}
			})
		end
	}
}
return M

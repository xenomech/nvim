local M = {
	{
		"navarasu/onedark.nvim",
		priority = 1000, -- make sure to load this before all the other start plugins
		config = function()
			local theme = require("onedark")
			theme.setup({
				style = "darker"
			})
			theme.load()
		end
	}
}

return M


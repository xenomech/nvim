local M = {
	{
		"christoomey/vim-tmux-navigator",
		cmd = {
			"TmuxNavigateLeft",
			"TmuxNavigateDown",
			"TmuxNavigateUp",
			"TmuxNavigateRight",
			"TmuxNavigatePrevious",
		},
		keys = {
			{ "<c-H>", "<cmd><C-U>TmuxNavigateLeft<cr>" },
			{ "<c-J>", "<cmd><C-U>TmuxNavigateDown<cr>" },
			{ "<c-K>", "<cmd><C-U>TmuxNavigateUp<cr>" },
			{ "<c-L>", "<cmd><C-U>TmuxNavigateRight<cr>" },
			{ "<c-tab>", "<cmd><C-U>TmuxNavigatePrevious<cr>" },
		},
	}
}


return M

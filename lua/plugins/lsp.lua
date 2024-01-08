local keymap = vim.keymap

local M = {
	{
		"williamboman/mason.nvim",
		lazy = false,
		config = function()
			require("mason").setup({
				ui = {
					icons = {
						package_installed = "✓",
						package_pending = "➜",
						package_uninstalled = "✗"
					}
				}
			})
		end,
	},
	{
		"williamboman/mason-lspconfig.nvim",
		lazy = false,
		opts = {
			auto_install = true,
			ensure_installed={
				"tsserver","volar","tailwindcss","pyright","prismals","remark_ls","lua_ls","jsonls","html","dockerls","bashls"
			}
		},
	},
	{
		"neovim/nvim-lspconfig",
		lazy = false,
		config = function()
			local capabilities = require('cmp_nvim_lsp').default_capabilities()

			local lspconfig = require("lspconfig")
			lspconfig.tsserver.setup({
				capabilities = capabilities
			})
			lspconfig.html.setup({
				capabilities = capabilities
			})
			lspconfig.lua_ls.setup({
				capabilities = capabilities
			})
		
			keymap.set("n", "K", vim.lsp.buf.hover, {})
			keymap.set("n", "<leader>gd", vim.lsp.buf.definition, {})
			keymap.set("n", "<leader>gr", vim.lsp.buf.references, {})
			keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, {})
		end,
	},
}

return M

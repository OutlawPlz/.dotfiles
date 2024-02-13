return {
	"neovim/nvim-lspconfig",
	dependencies = {
		"williamboman/mason.nvim",
		"williamboman/mason-lspconfig.nvim",
	},
	config = function()
		require("mason").setup()

		require("mason-lspconfig").setup({
			automatic_installation = true,
		})

		local lsp = require("lspconfig")

		lsp.lua_ls.setup({})
		lsp.intelephense.setup({})
		lsp.volar.setup({})

		vim.keymap.set("n", "<leader>lD", vim.lsp.buf.hover, {})
		vim.keymap.set("n", "<leader>ld", vim.lsp.buf.definition, {})
		vim.keymap.set({ "n" }, "<leader>la", vim.lsp.buf.code_action, {})
	end,
}

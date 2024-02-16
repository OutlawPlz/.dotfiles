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

		-- LSP

		lsp.lua_ls.setup({})
		lsp.intelephense.setup({})
		lsp.volar.setup({})
		lsp.tailwindcss.setup({})

		-- Keymaps

		vim.keymap.set("n", "gd", ":Telescope lsp_definitions<CR>", { desc = "Go to definition" })
		vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, { desc = "Code actions" })
		vim.keymap.set("n", "gi", ":Telescope lsp_implementations<CR>", { desc = "Go to implementations" })
		vim.keymap.set("n", "gr", ":Telescope lsp_references<CR>", { desc = "Go to references" })
		vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename, { desc = "Rename occurrence" })
		vim.keymap.set("n", "<leader>lf", vim.lsp.buf.format, { desc = "Lint and format code" })
		vim.keymap.set("n", "<leader>h", vim.lsp.buf.hover, { desc = "Show documentation, [h]elp" })

		vim.api.nvim_create_autocmd("CursorHold", {
			pattern = "*.*",
			callback = function()
				vim.lsp.buf.hover({ focusable = false })
			end,
		})

		-- vim.keymap.set("n", "<Leader>lr", ":LspRestart<CR>", { silent = true })
		-- vim.keymap.set("n", "K", "<cmd>lua vim.lsp.buf.hover()<CR>")
		-- vim.keymap.set("n", "<Leader>rn", "<cmd>lua vim.lsp.buf.rename()<CR>")
		-- vim.keymap.set("n", "<Leader>d", "<cmd>lua vim.diagnostic.open_float()<CR>")
		-- vim.keymap.set("n", "[d", "<cmd>lua vim.diagnostic.goto_prev()<CR>")
		-- vim.keymap.set("n", "]d", "<cmd>lua vim.diagnostic.goto_next()<CR>")
	end,
}

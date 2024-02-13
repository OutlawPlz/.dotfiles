return {
	"nvim-treesitter/nvim-treesitter",
	build = ":TSUpdate",
	config = function()
		local config = require("nvim-treesitter.configs")

		config.setup({
			ensure_installed = {
				"bash",
				"css",
				"gitcommit",
				"gitignore",
				"html",
				"javascript",
				"json",
				"lua",
				"php",
				"regex",
				"sql",
				"typescript",
				"vue",
				"yaml",
			},
			highlight = { enable = true },
			indent = { enable = true },
		})
	end,
}

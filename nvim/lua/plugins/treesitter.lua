return {
	"nvim-treesitter/nvim-treesitter",
	build = ":TSUpdate",
	dependencies = {
		"nvim-treesitter/nvim-treesitter-textobjects",
	},
	config = function()
		require("nvim-treesitter.configs").setup({
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
				"phpdoc",
				"regex",
				"sql",
				"typescript",
				"vue",
				"yaml",
			},
			highlight = { enable = true },
			indent = { enable = true },
			textobjects = {
				select = {
					enable = true,
					lookahead = true,
					keymaps = {
						["af"] = { query = "@function.outer", desc = "around function" },
						["if"] = { query = "@function.inner", desc = "inner function" },
						["ac"] = { query = "@class.outer", desc = "around class" },
						["ic"] = { query = "@class.inner", desc = "inner class" },
						["aa"] = { query = "@parameter.outer", desc = "around attribute" },
						["ia"] = { query = "@parameter.inner", desc = "inner attribute" },
					},
				},
			},
		})
	end,
}

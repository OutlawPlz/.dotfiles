return {
	"nvim-telescope/telescope.nvim",
	tag = "0.1.5",
	dependencies = {
		"nvim-lua/plenary.nvim",
	},
	keys = {
		{ "<leader><space>", ":Telescope find_files<CR>", { desc = "Find files" } },
		{ "<leader>b", ":Telescope buffers<CR>", { desc = "Find buffers" } },
	},
	config = function()
		local actions = require("telescope.actions")

		local telescope = require("telescope")

		telescope.setup({
			defaults = {
				mappings = {
					i = {
						["<esc>"] = actions.close,
					},
				},
				file_ignore_patterns = { ".git/" },
			},
			pickers = {
				buffers = {
					previewer = false,
					theme = "dropdown",
				},
			},
		})
	end,
}

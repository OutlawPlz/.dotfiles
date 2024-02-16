return {
	"nvim-telescope/telescope.nvim",
	tag = "0.1.5",
	dependencies = {
		"nvim-lua/plenary.nvim",
	},
	keys = {
		{ "<leader><space>", ":Telescope find_files<CR>", { desc = "Find files" } },
		{ "<leader>fb", ":Telescope buffers sort_lastused=true<CR>", { desc = "Find buffers" } },
		{ "<leader>fg", ":Telescope live_grep<CR>", { desc = "Grep text" } },
	},
	config = function()
		local actions = require("telescope.actions")

		local telescope = require("telescope")

		telescope.setup({
			defaults = {
				layout_config = {
					prompt_position = "top",
				},
				sorting_strategy = "ascending",
				mappings = {
					i = {
						["<esc>"] = actions.close,
					},
				},
				file_ignore_patterns = { ".git/" },
			},
			pickers = {
				find_files = {
					hidden = true,
				},
				buffers = {
					previewer = false,
					theme = "dropdown",
				},
			},
		})
	end,
}

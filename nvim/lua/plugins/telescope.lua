return {
	"nvim-telescope/telescope.nvim",
	tag = "0.1.5",
	dependencies = {
		"nvim-lua/plenary.nvim",
	},
	keys = {
		{
			"<leader>ff",
			function()
				require("telescope.builtin").find_files()
			end,
		},
		{
			"<leader>fF",
			function()
				require("telescope.builtin").find_files({ no_ignore = true, prompt_title = "All Files" })
			end,
		},
		{
			"<leader>fb",
			function()
				require("telescope.builtin").buffers()
			end,
		},
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

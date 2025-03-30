return {
	"nvim-telescope/telescope.nvim",
	tag = "0.1.8",
	dependencies = {
		"nvim-lua/plenary.nvim",
	},
	keys = {
		{ "<leader><space>", ":Telescope find_files<CR>",                                 { desc = "Find files" } },
		{ "<leader><tab>",   ":Telescope buffers sort_lastused=true<CR>",                 { desc = "Find buffers" } },
		{ "<leader>fa",      ":Telescope find_files no_ignore=true<CR>",                  { desc = "Find all files" } },
		{ "<leader>fg",      ":Telescope live_grep<CR>",                                  { desc = "Grep text" } },
		{ "<leader>fb",      ":Telescope file_browser path=%:p:h select_buffer=true<CR>", { desc = "Browse files" } },
		{ "<leader>fs",      ":Telescope lsp_document_symbols<CR>",                       { desc = "Find symbols" } },
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
				-- path_display = "truncate",
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
			extensions = {
				file_browser = {
					previewer = false,
					grouped = true,
					layout_config = {
						width = 80,
					},
				},
			},
		})
	end,
}

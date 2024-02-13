return {
	"voldikss/vim-floaterm",
	keys = {
		{ "<C-\\>", ":FloatermToggle<CR>" },
		{ "<C-\\>", "<C-\\><C-n>:FloatermToggle<CR>", mode = "t" },
	},
	cmd = { "FloatermToggle" },
	init = function()
		vim.g.floaterm_wintype = "split"
		vim.g.floaterm_height = .4
	end,
}

vim.g.mapleader = " "

require("options")

local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"

if not vim.loop.fs_stat(lazypath) then
	vim.fn.system({
		"git",
		"clone",
		"--filter=blob:none",
		"https://github.com/folke/lazy.nvim.git",
		"--branch=stable", -- latest stable release
		lazypath,
	})
end

vim.opt.rtp:prepend(lazypath)

require("lazy").setup("plugins")

vim.cmd([[
	augroup Terminal
		autocmd!
		autocmd TermOpen * setlocal nospell
		autocmd TermOpen * setlocal nonumber
	augroup END

	augroup AutosaveBuffer
		autocmd!
		autocmd FocusLost,BufLeave *.* :up
	augroup END
]])

vim.cmd.colorscheme("catppuccin-macchiato")

-- Add /usr/local/bin to Neovim's PATH
vim.env.PATH = vim.env.PATH .. ":/home/edgarsdikis/usr/local/bin"
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
	vim.fn.system({
		"git",
		"clone",
		"--filter=blob:none",
		"https://github.com/folke/lazy.nvim.git",
		"--branch=stable", -- latest stable release
		lazypath,
	})
end
vim.cmd("set runtimepath=" .. lazypath .. "," .. vim.o.runtimepath)
require("vim-options")
require("lazy").setup("plugins", {
	ui = {
		size = { width = 0.8, height = 0.8 },
		wrap = true,
		border = "rounded", -- Change to "single", "double", etc.
	},
})

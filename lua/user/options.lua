-- :h options
local options = {
	clipboard = "unnamedplus",
	number = true,
	relativenumber = true,
	swapfile = false,
	termguicolors = true,
	smartcase = true,
	smartindent = true,
	mouse = "a",
	shiftwidth = 2,
	tabstop = 2,
	softtabstop = 2,
	signcolumn = "yes",
	wrap = false,
	scrolloff = 10,
	sidescrolloff = 10,
	hidden = true,
	list = true,
	autoindent = true,
	foldmethod = "indent",
	foldnestmax = 5,
	autoread = true,
	hlsearch = true,
}

for k, v in pairs(options) do
	vim.opt[k] = v
end

require("bufferline").setup({})

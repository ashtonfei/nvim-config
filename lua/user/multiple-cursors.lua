local status_ok, plugin = pcall(require, "vim-multiple-cursors")

if not status_ok then
	return
end

plugin.setup({})

local null_ls = require("null-ls")

null_ls.setup({
	sources = {
		null_ls.builtins.formatting.prettier,
		null_ls.builtins.formatting.stylua,
		null_ls.builtins.diagnostics.eslint,
	},
	on_attach = function(client, bufnr)
		if client.name == "tsserver" then
			-- client.resolved_capabilities.document_formatting = false -- 0.7 and earlier
			client.server_capabilities.documentFormattingProvider = false -- 0.8 and later
		end
		if client.server_capabilities.documentFormattingProvider then
			vim.cmd("nnoremap <silent><buffer> <Leader>f :lua vim.lsp.buf.format { async = true }<CR>")
			-- format on save
			vim.cmd("autocmd BufWritePost <buffer> lua vim.lsp.buf.format { async = true }")
		end

		if client.server_capabilities.documentRangeFormattingProvider then
			vim.cmd("xnoremap <silent><buffer> <Leader>f :lua vim.lsp.buf.range_formatting({})<CR>")
		end
	end,
})

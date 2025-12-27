vim.lsp.config("gopls", {
	settings = {
		["gopls"] = { gofumpt = true },
	},
})
vim.lsp.enable({ "gopls", "golangci_lint_ls" })
vim.lsp.enable({ "lua_ls", "pyright", "ruff" })

return {
	"neovim/nvim-lspconfig",
	event = { "BufReadPre", "BufNewFile" },
	dependencies = {
		"saghen/blink.cmp",
		{
			"folke/lazydev.nvim",
			ft = "lua",
			opts = {
				library = {
					{ path = "${3rd}/luv/library", words = { "vim%.uv" } },
				},
			},
		},
	},
	config = function()
		local lspconfig = require("lspconfig")
		local blink_cmp = require("blink.cmp")

		vim.api.nvim_create_autocmd("LspAttach", {
			group = vim.api.nvim_create_augroup("UserLspConfig", {}),
			callback = function(ev)
				local opts = { buffer = ev.buf, silent = true }
				local telescope = require("telescope.builtin")

				opts.desc = "Goto References"
				vim.keymap.set("n", "gr", telescope.lsp_references, opts)

				opts.desc = "Goto Definition"
				vim.keymap.set("n", "gd", telescope.lsp_definitions, opts)

				opts.desc = "Goto Type Definitions"
				vim.keymap.set("n", "gy", telescope.lsp_type_definitions, opts)

				opts.desc = "Goto Implementations"
				vim.keymap.set("n", "gi", telescope.lsp_implementations, opts)

				opts.desc = "Code Action"
				vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, opts)
			end,
		})

		local capabilities = blink_cmp.get_lsp_capabilities()

		lspconfig.gopls.setup({
			capabilities = capabilities,
			settings = {
				gopls = {
					gofumpt = false,
					codelenses = {
						gc_details = false,
						generate = true,
						regenerate_cgo = true,
						run_govulncheck = true,
						test = true,
						tidy = true,
						upgrade_dependency = true,
						vendor = true,
					},
					hints = {
						assignVariableTypes = false,
						compositeLiteralFields = false,
						compositeLiteralTypes = false,
						constantValues = false,
						functionTypeParameters = false,
						parameterNames = false,
						rangeVariableTypes = false,
					},
					analyses = {
						nilness = true,
						unusedparams = true,
						unusedwrite = true,
						useany = true,
					},
					usePlaceholders = false,
					completeUnimported = true,
					staticcheck = true,
					directoryFilters = { "-.git", "-.vscode", "-.idea", "-.vscode-test", "-node_modules" },
					semanticTokens = true,
				},
			},
		})

		lspconfig.lua_ls.setup({
			capabilities = capabilities,
			settings = {
				Lua = {
					diagnostics = {
						global = { "vim", "require" },
					},
				},
			},
		})
	end,
}

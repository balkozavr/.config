return {
	"stevearc/conform.nvim",
	dependencies = {
		"williamboman/mason.nvim",
		"zapling/mason-conform.nvim",
	},
	config = function()
		local conform = require("conform")

		conform.setup({
			formatters_by_ft = {
				lua = { "stylua" },

				python = { "isort", "ruff" },

				go = {
					"goimports",
					"gofumpt",
				},

				javascript = { "prettierd", "prettier" },
				javascriptreact = { "prettierd", "prettier" },
				typescript = { "prettierd", "prettier" },
				typescriptreact = { "prettierd", "prettier" },
				json = { "prettierd", "prettier" },
				css = { "prettierd", "prettier" },
				html = { "prettierd", "prettier" },
			},
		})

		require("mason-conform").setup({})
	end,
}

vim.api.nvim_set_hl(0, "SnippetTabstop", {})
vim.api.nvim_set_hl(0, "SnippetActive", {})

return {
	"saghen/blink.cmp",
	dependencies = { "rafamadriz/friendly-snippets" },

	version = "1.*",
	opts = {
		signature = { enabled = true },

		appearance = {
			nerd_font_variant = "mono",
		},

		completion = {
			documentation = { auto_show = true, auto_show_delay_ms = 0 },
			menu = { auto_show = true },
		},

		sources = {
			default = { "lsp", "path", "snippets", "buffer" },
		},

		fuzzy = { implementation = "prefer_rust_with_warning" },

		keymap = {
			["<C-e>"] = { "show", "show_documentation", "hide_documentation" },
			["<C-c>"] = { "hide", "fallback" },
		},
	},
	opts_extend = { "sources.default" },
}

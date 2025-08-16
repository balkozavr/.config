return {
	"nvim-telescope/telescope.nvim",
	event = "VimEnter",
	dependencies = {
		"nvim-lua/plenary.nvim",
		{
			"nvim-telescope/telescope-fzf-native.nvim",

			build = "make",

			cond = function()
				return vim.fn.executable("make") == 1
			end,
		},
		{ "nvim-telescope/telescope-ui-select.nvim" },

		{ "nvim-tree/nvim-web-devicons", enabled = vim.g.have_nerd_font },
	},
	config = function()
		require("telescope").setup({
			defaults = {
				mappings = {
					i = { ["<C-j>"] = require("telescope.actions").preview_scrolling_left },
				},
			},
			extensions = {
				["ui-select"] = {
					require("telescope.themes").get_dropdown(),
				},
			},
		})

		pcall(require("telescope").load_extension, "fzf")
		pcall(require("telescope").load_extension, "ui-select")

		local builtin = require("telescope.builtin")
		vim.keymap.set("n", "<leader>f", builtin.find_files, { desc = "File Search" })
		vim.keymap.set("n", "<leader>/", builtin.live_grep, { desc = "Grep Search" })
		vim.keymap.set({ "n", "x" }, "gh", vim.lsp.buf.hover, { desc = "Hover Info" })
		vim.keymap.set("n", "<leader>h", builtin.help_tags, { desc = "Help Search" })
		vim.keymap.set("n", "<leader>bf", builtin.buffers, { desc = "Buffer Find" })
	end,
}

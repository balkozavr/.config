return {
	"echasnovski/mini.nvim",
	version = false,
	config = function()
		require("mini.ai").setup()
		require("mini.surround").setup()
		require("mini.pairs").setup()

		require("mini.files").setup({
			content = {
				filter = function(entry)
					return entry.name ~= ".DS_Store"
						and entry.name ~= ".git"
						and entry.name ~= ".direnv"
						and entry.name ~= "node_modules"
				end,
			},
			windows = {
				preview = true,
				width_focus = 30,
				width_nofocus = 30,
				width_preview = 50,
			},
			mappings = {
				go_in_plus = "l",
				go_in = "L",
				go_out_plus = "h",
				go_out = "H",
				synchronize = "s",
				reset = ",",
			},
		})

		vim.keymap.set("n", "<leader>e", function()
			local MiniFiles = require("mini.files")
			local _ = MiniFiles.close() or MiniFiles.open(vim.api.nvim_buf_get_name(0), false)
			vim.defer_fn(function()
				MiniFiles.reveal_cwd()
			end, 0)
		end, { desc = "Mini Files" })
	end,
}

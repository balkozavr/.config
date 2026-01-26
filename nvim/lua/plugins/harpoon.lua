return {
	"ThePrimeagen/harpoon",
	branch = "harpoon2",
	dependencies = { "nvim-lua/plenary.nvim" },
	config = function()
		local harpoon = require("harpoon")

		-- REQUIRED
		harpoon:setup()
		-- REQUIRED

		vim.keymap.set("n", "<leader>a", function()
			harpoon:list():add()
		end, { desc = "Harpoon Append" })
		vim.keymap.set("n", "<C-e>", function()
			harpoon.ui:toggle_quick_menu(harpoon:list())
		end)

		vim.keymap.set("n", "<C-j>", function()
			harpoon:list():select(1)
		end, { desc = "Harpoon (1)" })
		vim.keymap.set("n", "<C-k>", function()
			harpoon:list():select(2)
		end, { desc = "Harpoon (2)" })
		vim.keymap.set("n", "<C-l>", function()
			harpoon:list():select(3)
		end, { desc = "Harpoon (3)" })

		-- Toggle previous & next buffers stored within Harpoon list
		vim.keymap.set("n", "H", function()
			harpoon:list():prev()
		end, { desc = "Harpoon prev" })
		vim.keymap.set("n", "L", function()
			harpoon:list():next()
		end, { desc = "Harpoon next" })
	end,
}

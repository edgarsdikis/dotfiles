return {
	"brianhuster/live-preview.nvim",
	dependencies = {
		"nvim-telescope/telescope.nvim",
	},
	config = function()
		require("livepreview.config").set({
			port = 8080, -- Default port for the preview server
			browser = "default", -- Use system default browser
			dynamic_root = true, -- Use parent directory of current file as server root
			sync_scroll = true, -- Sync scrolling between Neovim and browser
			picker = "telescope", -- Use telescope for the file picker
		})

		-- Set up keybindings
		vim.keymap.set("n", "<leader>lp", "<cmd>LivePreview start<CR>", { desc = "Start Live Preview" })
		vim.keymap.set("n", "<leader>ls", "<cmd>LivePreview close<CR>", { desc = "Stop Live Preview" })
		vim.keymap.set("n", "<leader>lf", "<cmd>LivePreview pick<CR>", { desc = "Pick File for Preview" })
	end,
}

return {
	"echasnovski/mini.nvim",
	version = false, -- latest version
	config = function()
		require("mini.pairs").setup() -- Auto-close brackets and quotes
		require("mini.comment").setup() -- Comment lines
		require("mini.ai").setup() -- Extend and create a/i textobjects
		require("mini.surround").setup() -- Surround actions
		require("mini.operators").setup() -- Text edit operators
		require("mini.indentscope").setup() -- Indentscope
		require("mini.icons").setup() -- Icons
		require("mini.notify").setup() -- Notifications
		require("mini.cursorword").setup() -- Highlight word under a cursor

		require("mini.move").setup({ -- Move any selection in any direction (Ctrl + arrows)
			mappings = {
				left = "<C-Left>",
				right = "<C-Right>",
				down = "<C-Down>",
				up = "<C-Up>",
				line_left = "<C-Left>",
				line_right = "<C-Right>",
				line_down = "<C-Down>",
				line_up = "<C-Up>",
			},
		})

		require("mini.files").setup({ -- File tree
			mappings = {
				go_in = "<Right>", -- Open directory / Enter file
				go_in_plus = "<CR>", -- Also allow Enter to go in
				go_out = "<Left>", -- Go up a directory
				go_out_plus = "<BS>", -- Backspace to go up in a directory
				reset = "<Esc>", -- Reset mini.files
			},
		})

		-- Custom keymaps
		vim.api.nvim_set_keymap(
			"n",
			"<C-n>",
			":lua require('mini.files').open()<CR>",
			{ noremap = true, silent = true }
		)
	end,
}

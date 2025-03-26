return {
	"nvim-treesitter/nvim-treesitter",
	build = ":TSUpdate", -- Make sure to update parsers
	config = function()
		local ts_configs = require("nvim-treesitter.configs")
		ts_configs.setup({
			-- Ensure that these languages are installed (you can modify the list as needed)
			ensure_installed = {
				"lua",
				"javascript",
				"c",
				"ruby",
				"python",
				"rust",
				"html",
			},

			-- Auto-install missing parsers when opening files
			auto_install = true,

			-- Install parsers synchronously or asynchronously
			sync_install = false,

			-- Specify which parsers to ignore (optional)
			ignore_install = {},

			-- Highlighting configuration
			highlight = {
				enable = true, -- Enable Treesitter highlighting
				additional_vim_regex_highlighting = false, -- Disable fallback highlighting
			},

			-- Indentation configuration (disable for now)
			indent = {
				enable = false, -- Disable Treesitter indentation
			},

			-- Additional configuration for text objects (optional)
			textobjects = {
				enable = true,
			},

			-- Additional configuration for folding (optional)
			folding = {
				enable = true,
			},

			-- Specify additional modules you want to load (if needed)
			modules = {
				"nvim-treesitter.parsers", -- Use the parser module
				"nvim-treesitter.query", -- Use the query module for text objects
			},
		})
	end,
}

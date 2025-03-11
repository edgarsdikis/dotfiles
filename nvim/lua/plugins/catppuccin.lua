return {
  "catppuccin/nvim",
  name = "catppuccin",
  priority = 1000,

  -- Transparent background
  opts = {
    term_colors = true,
    transparent_background = true,
    dim_inactive = {
      enabled = false,
      shade = "dark",
      percentage = 0.15,
    },

    -- Custom highlights for cursor line nr.
    custom_highlights = function()
      return {
        CursorLineNr = { fg = "#fa5a5a", bold = true }, -- Red cursor line number
      }
    end,
  },

  config = function(_, opts)
    require("catppuccin").setup(opts) -- Apply the options
    vim.cmd.colorscheme("catppuccin-macchiato")
  end,
}


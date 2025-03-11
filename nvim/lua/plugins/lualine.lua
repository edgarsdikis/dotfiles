return {
  "nvim-lualine/lualine.nvim",
  config = function()
    -- Load the custom theme to fix transparency issue
    local custom_theme = require("lualine.themes.auto")

    -- Set the background color for both normal and inactive modes
    custom_theme.normal.c.bg = "#262626"   --"#1E202F"
    custom_theme.inactive.c.bg = "#262626" --"#1E202F"

    -- Setup lualine with the custom theme
    require("lualine").setup({
      options = {
        theme = custom_theme,
        icons_enabled = true,
      },
    })
  end,
}


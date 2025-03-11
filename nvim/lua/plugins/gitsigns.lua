return {
  "lewis6991/gitsigns.nvim",
  config = function()
    require("gitsigns").setup({
      signs = {
        add = { text = "+" }, -- Green +
        change = { text = "~" }, -- Yellow ~
        delete = { text = "-" }, -- Red -
        topdelete = { text = "^" }, -- Red ^
        changedelete = { text = "≠" }, -- Yellow ≠
        untracked = { text = "?" }, -- Grey ?
      },
    })
  end,
}

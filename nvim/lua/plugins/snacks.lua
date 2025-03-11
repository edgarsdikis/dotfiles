return {
  "folke/snacks.nvim",
  priority = 1000,
  lazy = false,
  opts = {
    dashboard = { enabled = true },
    scope = { enabled = false },
    scroll = { enabled = false },
    words = { enabled = false },
    -- Snacks Terminal setup
    terminal = {
      enabled = true,
      vim.api.nvim_create_autocmd("TermClose", {
        pattern = "*",
        callback = function()
          -- Check if the buffer is still valid before closing
          local bufnr = vim.api.nvim_get_current_buf()
          if vim.api.nvim_buf_is_valid(bufnr) then
            vim.api.nvim_buf_delete(bufnr, { force = true })
          end
        end,
      }),
    },
    -- Statuscolumn setup (requires GitSigns)
    statuscolumn = {
      enabled = true,
      left = { "mark", "sign" }, -- Displays signs on the left side
      git = {
        patterns = { "GitSign" }, -- Match Git-related patterns
      },
      refresh = 50,           -- Refresh every 50ms
    },
  },

-- Snacks Dashboard
vim.keymap.set("n", "<leader>sd", function()
require("snacks").dashboard()
end, { desc = "Open Snacks Dashboard" }),

  -- LazyGit
  vim.keymap.set("n", "<leader>gg", function()
    require("snacks").lazygit.open()
  end, { desc = "Open LazyGit with Snacks" }),

  -- Terminal
  vim.keymap.set("n", "<leader>tt", function()
    require("snacks").terminal.toggle()
  end, { desc = "Toggle Snacks Terminal" }),
}

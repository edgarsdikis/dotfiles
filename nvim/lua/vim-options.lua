vim.cmd("set expandtab")
vim.cmd("set tabstop=4")
vim.cmd("set softtabstop=4")
vim.cmd("set shiftwidth=4")
vim.opt.smartindent = true
vim.opt.backspace = { "indent", "eol", "start" }
vim.cmd("filetype plugin indent on")                     -- Enable filetype-specific indentation
vim.cmd("set wildmenu")                                  -- Enables a better completion UI
vim.cmd("set wildmode=longest:full,full")                -- Makes completion work smoothly
vim.cmd("set wildoptions=pum")                           -- Enables popup menu for command suggestions
vim.wo.number = true                                     -- Enable line numbers
vim.wo.relativenumber = true                             -- Enable relative line numbers
vim.opt.cursorline = true                                -- Highlights the current line (optional)
vim.g.mapleader = " "

-- Create a split with mini.files
vim.keymap.set("n", "<leader>vs", function()
    vim.cmd("vsplit")
end, { desc = "Vertical split" })

vim.keymap.set("n", "<leader>hs", function()
    vim.cmd("split")
end, { desc = "Horizontal split" })

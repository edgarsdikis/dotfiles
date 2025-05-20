return {
    "andrewferrier/debugprint.nvim",
    dependencies = {
        "echasnovski/mini.hipatterns",
        "nvim-telescope/telescope.nvim",
    },
    keys = {
        { "<leader>dp", function() require("debugprint").debugprint() end, desc = "Debug Print" },
        { "<leader>dv", function() require("debugprint").debugprint({ variable = true }) end, desc = "Debug Print Variable" },
        { "<leader>dc", function() require("debugprint").clear() end, desc = "Clear Debug Prints" },
    },
    lazy = false,
    version = "*",
    config = true, -- Use default configuration
}

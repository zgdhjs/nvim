local conf = require('modules.ui.config')

packadd({
    "catppuccin/nvim",
    name = "catppuccin",
    priority = 1000,
})

-- packadd({
--     "SmiteshP/nvim-navic",
--     requires = { "neovim/nvim-lspconfig" },
-- })

packadd({
    'nvim-lualine/lualine.nvim',
    requires = { 'nvim-tree/nvim-web-devicons', opt = true },

    config = conf.lualine,
})

-- local pckr = require("pckr")

-- pckr.add{
--     "catppuccin/nvim",
--     name = "catppuccin",
--     priority = 1000,
-- }

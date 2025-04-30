local config = {}

function config.lualine()
    require('lualine').setup({
        options = { theme  = 'catppuccin-mocha' },
        component_separators = { left = '', right = ''},
        section_separators = { left = '', right = ''},
    })
end

return config
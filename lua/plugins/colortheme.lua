return {
    'catppuccin/nvim',
    name = 'catppuccin',
    priority = 1000,
    lazy = false,
    init = function()
        vim.cmd.colorscheme 'catppuccin-mocha'
        vim.cmd.hi 'Comment gui=none'
    end,
}

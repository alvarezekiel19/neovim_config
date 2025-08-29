require 'core.options'
require 'core.keymaps'

local lazypath = vim.fn.stdpath 'data' .. '/lazy/lazy.nvim'
if not (vim.uv or vim.loop).fs_stat(lazypath) then
    local lazyrepo = 'https://github.com/folke/lazy.nvim.git'
    local out = vim.fn.system { 'git', 'clone', '--filter=blob:none', '--branch=stable', lazyrepo, lazypath }
    if vim.v.shell_error ~= 0 then
        error('Error cloning lazy.nvim:\n' .. out)
    end
end
vim.opt.rtp:prepend(lazypath)

require('lazy').setup {
    require 'plugins.catppuccin', -- Load Catppuccin Theme
    require 'plugins.tokyonight', -- Load Tokyonight Theme
    require 'plugins.onedarkpro', -- Load OneDarkPro Theme
    require 'plugins.tokyodark', -- Load Tokyodark theme
    require 'plugins.neotree', -- Load Neotree
    require 'plugins.bufferline', -- Load bufferline
    require 'plugins.lualine', -- Load Lualine
    require 'plugins.treesitter', -- Load treesitter
    require 'plugins.telescope', -- Load telescope
    require 'plugins.lsp', -- Load LSP
    require 'plugins.autocompletion', -- Load Autocompletion
    require 'plugins.none-ls', -- Load none-ls
    require 'plugins.gitsigns', -- Load gitsigns
    require 'plugins.indent-blankline', -- Load indent-blankline
    require 'plugins.markdownpreview', -- Load Markdown preview
    require 'plugins.live-server', -- Load live-server
    require 'plugins.vimbegood', -- Load Vim-be-good
    require 'plugins/noice', -- Load Noice
    require 'plugins/rendermarkdown', -- Load Render Markdown
    require 'plugins/colorizer', -- Load colorizer
    require 'plugins/colorfulmenu', -- Load Colorful Menu
    require 'plugins/treesj', -- Load TreeSJ
    require 'plugins/todo-comments', -- Load todo-comments
    require 'plugins/cord', -- Load cord
    require 'plugins/lensline', -- Load lensline
}

-- Start of Inline Blockline setup
local highlight = {
    'RainbowRed',
    'RainbowYellow',
    'RainbowBlue',
    'RainbowOrange',
    'RainbowGreen',
    'RainbowViolet',
    'RainbowCyan',
}

local hooks = require 'ibl.hooks'
-- create the highlight groups in the highlight setup hook, so they are reset
-- every time the colorscheme changes
hooks.register(hooks.type.HIGHLIGHT_SETUP, function()
    vim.api.nvim_set_hl(0, 'RainbowRed', { fg = '#E06C75' })
    vim.api.nvim_set_hl(0, 'RainbowYellow', { fg = '#E5C07B' })
    vim.api.nvim_set_hl(0, 'RainbowBlue', { fg = '#61AFEF' })
    vim.api.nvim_set_hl(0, 'RainbowOrange', { fg = '#D19A66' })
    vim.api.nvim_set_hl(0, 'RainbowGreen', { fg = '#98C379' })
    vim.api.nvim_set_hl(0, 'RainbowViolet', { fg = '#C678DD' })
    vim.api.nvim_set_hl(0, 'RainbowCyan', { fg = '#56B6C2' })
end)

require('ibl').setup { indent = { highlight = highlight } }
-- End of Inline Blockline setup

-- set line number color
vim.api.nvim_set_hl(0, 'LineNrAbove', { fg = '#3d3d3d' })
vim.api.nvim_set_hl(0, 'LineNr', { fg = '#D19A66' })
vim.api.nvim_set_hl(0, 'LineNrBelow', { fg = '#3d3d3d' })

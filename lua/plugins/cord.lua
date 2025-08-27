return {
    'vyfor/cord.nvim',
    build = ':Cord update',

    opts = {
        display = {
            theme = 'default',
            flavor = 'dark',
        },

        variables = {
            git_status = function(opts)
                return git_branch
            end,
        },

        text = {
            editing = function(opts)
                local git_branch = vim.fn.system('git branch --show-current'):gsub('\n', '')
                if git_branch ~= '' then
                    return string.format('Editing %s on %s - %s:%s', opts.filename, git_branch, opts.cursor_line,
                        opts.cursor_char)
                else
                    return string.format('Editing %s - %s:%s', opts.filename, opts.cursor_line, opts.cursor_char)
                end
            end,
        },

        hooks = {
            workspace_change = function(opts)
                git_branch = vim.fn.system('git branch --show-current'):gsub('\n', '')
            end,
        },
    },
}

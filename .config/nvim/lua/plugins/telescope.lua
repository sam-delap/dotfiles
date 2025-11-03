local builtin = require('telescope.builtin')

return {
    "nvim-telescope/telescope.nvim",
    dependencies = {
        "nvim-lua/plenary.nvim"
    },
    tag = "0.1.8", -- use tagged releases to avoid breaking changes
    keys = {
        { '<leader>pf', builtin.find_files },
        { '<leader>ps', function()
            builtin.grep_string({ search = vim.fn.input("Find Word > ") })
        end }
    }
}


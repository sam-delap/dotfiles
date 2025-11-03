local builtin = require('telescope.builtin')

return {
    "nvim-telescope/telescope.nvim",
    dependencies = {
        "nvim-lua/plenary.nvim"
    },
    version = "0.1.8",
    keys = {
        { '<leader>pf', builtin.find_files },
        { '<leader>ps', function()
            builtin.grep_string({ search = vim.fn.input("Find Word: ") })
        end }
    }
}


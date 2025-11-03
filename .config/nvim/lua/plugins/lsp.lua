-- General flow for enabling LSP clients
-- 1. Ensure it has a base config in nvim-lspconfig
-- 2. Install using Mason
-- 3. Enable config inline

return {
    "mason-org/mason-lspconfig.nvim",
    opts = {},
    dependencies = {
        { "mason-org/mason.nvim", opts = {} },
        "neovim/nvim-lspconfig",
    },
    lazy = false
}

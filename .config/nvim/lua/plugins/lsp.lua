-- General flow for enabling LSP clients
-- 1. Ensure it has a base config in nvim-lspconfig
-- 2. Install using Mason
-- 3. Enable config inline

vim.lsp.enable('ansiblels')
vim.lsp.enable('docker_language_server')
vim.lsp.enable('lua_ls')
vim.lsp.enable('ruff')
vim.lsp.enable('rust_analyzer')
vim.lsp.enable('tofu_ls')

return {
    {
        "neovim/nvim-lspconfig",
        lazy = false
    }
}

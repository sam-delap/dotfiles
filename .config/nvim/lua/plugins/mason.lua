return {
    {
        "mason-org/mason.nvim",
        opts = {
            require_installed = {
                "ruff",
                "rust-analyzer",
                "ansible-language-server",
                "docker-language-server",
                "lua-language-server",
                "tofu-ls",
            }
        }
    }
}

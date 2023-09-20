return {
    "williamboman/mason-lspconfig.nvim",
    lazy = true,
    build = Noop, -- This ensures that mason-lspconfig is loaded on a clean install
    opts = {
        ensure_installed = {
            "bashls",
            "efm",
            "lua_ls",
            "pyright",
        },
        handlers = {}
    },
}

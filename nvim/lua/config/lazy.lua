local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
    vim.fn.system({
        "git",
        "clone",
        "--filter=blob:none",
        "https://github.com/folke/lazy.nvim.git",
        "--branch=stable", -- latest stable release
        lazypath,
    })
end
vim.opt.rtp:prepend(lazypath)


require("lazy").setup(
    {
        spec = require("config.utils").generate_import_specs(
            "python",
            "lua"
        ),
        -- spec = {
        --     { import = "plugins" },
        --     { import = "lang.lua" },
        --     { import = "lang.python" },
        -- },
        install = { colorscheme = { "tokyonight" } },
        ui = {
            border = "rounded",
        },
    }
)

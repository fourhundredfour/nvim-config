local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
vim.opt.rtp:prepend(lazypath)

local plugins = {
    "nvim-treesitter/nvim-treesitter",
    "williamboman/mason.nvim",
    "williamboman/mason-lspconfig.nvim",
    "neovim/nvim-lspconfig",
    "folke/tokyonight.nvim",
    "nvim-tree/nvim-tree.lua",
    "nvim-tree/nvim-web-devicons",
    "tpope/vim-fugitive",
    "tpope/vim-surround",
    "nvim-lualine/lualine.nvim",
    "numToStr/Comment.nvim",
    "edluffy/hologram.nvim",
    {
        "nvim-telescope/telescope.nvim",
        dependencies = { "nvim-lua/plenary.nvim" }
    }
}

if not vim.loop.fs_stat(lazypath) then
    vim.fn.system({
        "git",
        "clone",
        "--filter=blob:none",
        "https://github.com/folke/lazy.nvim.git",
        "--branch=stable",
        lazypath,
    })
end

require("lazy").setup(plugins, {})
require("plugins.nvim-tree.init")
require("plugins.telescope.init")
require("plugins.lualine.init")
require("plugins.comment.init")
require("plugins.hologram.init")

return {}
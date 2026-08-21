local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
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
vim.opt.rtp:prepend(lazypath)

-- Configuration de Lazy
require("lazy").setup({
  spec = {
    -- Les plugins à installer
    { "folke/tokyonight.nvim", lazy = false, priority = 1000 },
    { "nvim-treesitter/nvim-treesitter", build = ":TSUpdate" },
    { "nvim-tree/nvim-tree.lua", dependencies = { "nvim-tree/nvim-web-devicons" } },
  },
})

local ok, _ = pcall(vim.cmd, "colorscheme tokyonight-storm")
if not ok then
  print("Le thème Tokyo Night est en cours d'installation, redémarrez Neovim juste après.")
end

require("nvim-tree").setup()
vim.keymap.set("n", "<leader>e", ":NvimTreeToggle<CR>", { silent = true })

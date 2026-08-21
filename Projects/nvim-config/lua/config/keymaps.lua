local opts = { noremap = true, silent = true }

vim.api.nvim_set_keymap("n", "<leader>e", ":NvimTreeToggle<CR>", opts) -- toggle arbre de fichiers
vim.api.nvim_set_keymap("n", "<leader>ff", ":Telescope find_files<CR>", opts) -- chercher fichiers
vim.api.nvim_set_keymap("n", "<leader>fg", ":Telescope live_grep<CR>", opts) -- rechercher dans projet
vim.api.nvim_set_keymap("n", "<leader>q", ":q<CR>", opts) -- quitter rapidement / ou pas lol


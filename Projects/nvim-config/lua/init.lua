require("plugins")

local opt = vim.opt

opt.number = true           -- Affiche les numéros de ligne
opt.relativenumber = true   -- Nombres relatifs
opt.expandtab = true        -- Convertir tab en espaces
opt.shiftwidth = 2          -- Indent de 2 espaces
opt.tabstop = 2             -- Largeur tab = 2 espaces
opt.smartindent = true      -- Indentation intelligente
opt.wrap = false            -- Pas de retour à la ligne automatique
opt.termguicolors = true    -- Couleurs 24-bit
opt.cursorline = true       -- Ligne curseur surlignée
opt.scrolloff = 8           -- Marge de scroll
opt.signcolumn = "yes"      -- Colonne pour signes (LSP, Git)

-- 3. Keymaps 
local keymap = vim.keymap

-- Save
keymap.set('n', '<leader>w', ':w<CR>')

-- Quit Neovim
keymap.set('n', '<leader>q', ':q<CR>')

-- Naviguer entre fenêtres avec Ctrl+h/j/k/l - merci hermit 
keymap.set('n', '<C-h>', '<C-w>h')
keymap.set('n', '<C-j>', '<C-w>j')
keymap.set('n', '<C-k>', '<C-w>k')
keymap.set('n', '<C-l>', '<C-w>l')

-- Ouvrir l’explorateur de fichiers (nvim-tree)
keymap.set('n', '<leader>e', ':NvimTreeToggle<CR>')

-- Recherche avec Telescope (fichiers)
keymap.set('n', '<leader>ff', ':Telescope find_files<CR>')

-- 4. Activer le thème tokyo-night (déjà configuré via plugins.lua)

-- 5. Config LSP minimal pour Python (avec nvim-lspconfig)
local nvim_lsp = require('lspconfig')

nvim_lsp.pyright.setup{}

-- 6. Autocomplétion 


-- 7. Messages à l’ouverture
vim.cmd('echo "Hi vis — bonne session !"')

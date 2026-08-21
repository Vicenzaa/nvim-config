local map = vim.keymap.set

-- ╭──────────────────────────────────────────╮
-- │ Files / Telescope                        │
-- ╰──────────────────────────────────────────╯

map("n", "<leader>ff", "<cmd>Telescope find_files<CR>", {
    desc = "Find files",
})

map("n", "<leader>fg", "<cmd>Telescope live_grep<CR>", {
    desc = "Live grep",
})

map("n", "<leader>fb", "<cmd>Telescope buffers<CR>", {
    desc = "Find buffers",
})

map("n", "<leader>fr", "<cmd>Telescope oldfiles<CR>", {
    desc = "Recent files",
})

map("n", "<leader>fh", "<cmd>Telescope help_tags<CR>", {
    desc = "Help",
})

-- ╭──────────────────────────────────────────╮
-- │ Explorer                                 │
-- ╰──────────────────────────────────────────╯

map("n", "<leader>e", "<cmd>Neotree toggle<CR>", {
    desc = "Explorer",
})

-- ╭──────────────────────────────────────────╮
-- │ Terminal                                 │
-- ╰──────────────────────────────────────────╯

map("n", "<leader>tt", "<cmd>ToggleTerm<CR>", {
    desc = "Terminal",
})

-- ╭──────────────────────────────────────────╮
-- │ Buffers                                  │
-- ╰──────────────────────────────────────────╯

map("n", "<leader>bd", "<cmd>bdelete<CR>", {
    desc = "Delete buffer",
})

map("n", "<leader>bn", "<cmd>bnext<CR>", {
    desc = "Next buffer",
})

map("n", "<leader>bp", "<cmd>bprevious<CR>", {
    desc = "Previous buffer",
})

-- ╭──────────────────────────────────────────╮
-- │ Windows                                  │
-- ╰──────────────────────────────────────────╯

map("n", "<leader>sv", "<cmd>vsplit<CR>", {
    desc = "Vertical split",
})

map("n", "<leader>sh", "<cmd>split<CR>", {
    desc = "Horizontal split",
})

map("n", "<leader>sx", "<cmd>close<CR>", {
    desc = "Close split",
})

-- Navigate windows with Ctrl + hjkl
map("n", "<C-h>", "<C-w>h", {
    desc = "Move left",
})

map("n", "<C-j>", "<C-w>j", {
    desc = "Move down",
})

map("n", "<C-k>", "<C-w>k", {
    desc = "Move up",
})

map("n", "<C-l>", "<C-w>l", {
    desc = "Move right",
})

-- ╭──────────────────────────────────────────╮
-- │ Editing                                  │
-- ╰──────────────────────────────────────────╯

map("n", "<leader>w", "<cmd>w<CR>", {
    desc = "Save",
})

map("n", "<leader>q", "<cmd>q<CR>", {
    desc = "Quit",
})

map("n", "<leader>x", "<cmd>wq<CR>", {
    desc = "Save & quit",
})

-- Keep selection when indenting
map("v", "<", "<gv")
map("v", ">", ">gv")

-- Move selected lines
map("v", "J", ":m '>+1<CR>gv=gv")
map("v", "K", ":m '<-2<CR>gv=gv")

-- ╭──────────────────────────────────────────╮
-- │ LSP                                      │
-- ╰──────────────────────────────────────────╯

map("n", "gd", vim.lsp.buf.definition, {
    desc = "Go to definition",
})

map("n", "gD", vim.lsp.buf.declaration, {
    desc = "Go to declaration",
})

map("n", "gr", vim.lsp.buf.references, {
    desc = "References",
})

map("n", "gi", vim.lsp.buf.implementation, {
    desc = "Implementation",
})

map("n", "K", vim.lsp.buf.hover, {
    desc = "Hover documentation",
})

map("n", "<leader>rn", vim.lsp.buf.rename, {
    desc = "Rename",
})

map("n", "<leader>ca", vim.lsp.buf.code_action, {
    desc = "Code action",
})

map("n", "<leader>d", vim.diagnostic.open_float, {
    desc = "Show diagnostic",
})

map("n", "[d", vim.diagnostic.goto_prev, {
    desc = "Previous diagnostic",
})

map("n", "]d", vim.diagnostic.goto_next, {
    desc = "Next diagnostic",
})
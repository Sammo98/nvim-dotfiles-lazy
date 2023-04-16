vim.keymap.set("n", "j", "h")
vim.keymap.set("n", "k", "j")
vim.keymap.set("n", "i", "k")
vim.keymap.set("n", "h", "i")

vim.keymap.set("v", "j", "h")
vim.keymap.set("v", "k", "j")
vim.keymap.set("v", "i", "k")

vim.keymap.set("n", "<leader>wi", "<C-w>")
vim.keymap.set("n", "<leader>wij", "<C-w>h")
vim.keymap.set("n", "<leader>wik", "<C-w>j")
vim.keymap.set("n", "<leader>wii", "<C-w>k")

local keymap = vim.keymap

-- set q to do nothing because it's so annoying (default is recording macro)
-- turned on when you need
keymap.set("n", "q", "")

-- greatest remap ever
vim.keymap.set("x", "p", "P")

-- using delete without yank
keymap.set({ "n", "v" }, "<leader>d", "\"_d", { desc = "Delete without yank" })

-- Increment/decrement
keymap.set("n", "+", "<C-a>")
keymap.set("n", "-", "<C-x>")

-- Select all
keymap.set("n", "<leader>A", "gg<S-v>G")

-- Scrolling
keymap.set("n", "<C-d>", "<C-d>zz")
keymap.set("n", "<C-u>", "<C-u>zz")


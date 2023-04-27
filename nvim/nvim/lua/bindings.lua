-- Opens explorer
vim.keymap.set("n", "<M-e>", vim.cmd.Ex)

-- [[ Basic Keymaps ]]

-- Keymaps for better default experience
-- See `:help vim.keymap.set()`
vim.keymap.set({ 'n', 'v' }, '<Space>', '<Nop>', { silent = true })

-- Remap for dealing with word wrap
vim.keymap.set('n', 'k', "v:count == 0 ? 'gk' : 'k'", { expr = true, silent = true })
vim.keymap.set('n', 'j', "v:count == 0 ? 'gj' : 'j'", { expr = true, silent = true })

-- Diagnostic keymaps
vim.keymap.set('n', '[d', vim.diagnostic.goto_prev, { desc = "Go to previous diagnostic message" })
vim.keymap.set('n', ']d', vim.diagnostic.goto_next, { desc = "Go to next diagnostic message" })
vim.keymap.set('n', '<M-d>', vim.diagnostic.open_float, { desc = "Open floating diagnostic message" })
vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist, { desc = "Open diagnostics list" })


-- Move selected lines up and down
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- Jump up and won while keeping the cursor at middle
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")

-- Keep search term at middle 
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

--  Delect highlighted text without modifing modifing buffer
--  and paste current buffer
vim.keymap.set("x", "<leader>p", "\"_dP")

-- Copy into system clipboard
vim.keymap.set("n", "<leader>y", "\"+y")
vim.keymap.set("n", "<leader>Y", "\"+Y")
vim.keymap.set("v", "<leader>y", "\"+y")


-- Split the window
vim.keymap.set("n", "<C-n>", "<C-w>v", { noremap = true})
vim.keymap.set("n", "<C-h>", "<C-w>h", { noremap = true})
vim.keymap.set("n", "<C-l>", "<C-w>l", { noremap = true})
vim.keymap.set("n", "<C-j>", "<C-w>j", { noremap = true})
vim.keymap.set("n", "<C-k>", "<C-w>k", { noremap = true})

-- navigation
vim.keymap.set("n", "L", "<cmd>bnext<cr>")
vim.keymap.set("n", "H", "<cmd>bprevious<cr>")

-- Delete current buffer, make and paste
-- vim.keymap.set("n", "<leader>cv", "ggVGd<Esc>:make<CR><CR><Esc>", { noremap = false})

vim.keymap.set("n", "<leader>cv", "<Cmd>make<CR><Esc><Cmd>edit!<CR>", { silent = false })
-- vim.keymap.set("n", "<leader>cv", "<Cmd>edit!<CR>", { silent = false })

vim.keymap.set('n', '<M-q>', ':bd<CR>', { desc = "Close current buffer" })

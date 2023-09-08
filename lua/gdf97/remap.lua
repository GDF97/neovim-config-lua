vim.g.mapleader = " "

vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

-- Split window
vim.keymap.set("n", "<leader>dv", ":vsplit<Return><C-w>w") -- Vertically
vim.keymap.set("n","<leader>bs",":split<Return><C-w>w") -- Horizontally

-- Change window
vim.keymap.set("n","<C-w>b","<C-w>h") -- Move to previous window

-- New tab
vim.keymap.set("n", "te" ,":tabedit<Return>")

-- Resize window
vim.keymap.set("n", "<C-w><right>", "<C-w>>")
vim.keymap.set("n", "<C-w><left>", "<C-w><")
vim.keymap.set("n", "<C-w><down>", "<C-w>-")
vim.keymap.set("n", "<C-w><up>", "<C-w>+")

-- Format 
vim.keymap.set('n', '<leader>f', ':Prettier<Return>')



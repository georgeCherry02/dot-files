-- Explore dir
vim.keymap.set("n", "<leader>d", vim.cmd.Ex)

-- Window switching
vim.keymap.set("n", "<C-j>", "<C-w>j", { noremap = true })
vim.keymap.set("n", "<C-k>", "<C-w>k", { noremap = true })
vim.keymap.set("n", "<C-l>", "<C-w>l", { noremap = true })
vim.keymap.set("n", "<C-h>", "<C-w>h", { noremap = true })


-- Allows movement of highlighted text - includes indentation
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '>-2<CR>gv=gv")

-- Append line below this line with a space
vim.keymap.set("n", "J", "mzJ`Z")

-- Shell
vim.keymap.set("n", "<leader>v", ":<C-u>vsplit<CR>")

-- Visual block
vim.keymap.set("n", "<leader>V", "<c-v>")

-- Clear highlight
vim.keymap.set("n", "<Esc><Esc>", ":noh<CR>")

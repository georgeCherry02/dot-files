-- Explore dir
vim.keymap.set("n", "<leader>d", vim.cmd.Ex)

-- Window switching
vim.keymap.set("n", "<C-j>", "<C-w>j", { noremap = true })
vim.keymap.set("n", "<C-k>", "<C-w>k", { noremap = true })
vim.keymap.set("n", "<C-l>", "<C-w>l", { noremap = true })
vim.keymap.set("n", "<C-h>", "<C-w>h", { noremap = true })

-- Allows movement of highlighted text - includes indentation
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv", { noremap = true })
vim.keymap.set("v", "K", ":m '>-2<CR>gv=gv", { noremap = true })
vim.keymap.set("v", ">", ">gv", { noremap = true })
vim.keymap.set("v", "<", "<gv", { noremap = true })

-- Append line below this line
vim.keymap.set("n", "J", "mzJdl`Z")

-- Horizontal split
vim.keymap.set("n", "<leader>v", ":<C-u>vsplit<CR>")

-- Visual block
vim.keymap.set("n", "<leader>V", "<c-v>")

-- Clear highlight
vim.keymap.set("n", "<Esc><Esc>", ":noh<CR>")

-- Because I'm some sort of psychopath
vim.keymap.set("n", "*", "#")
vim.keymap.set("n", "#", "*")

-- Change current working directory
vim.keymap.set("n", "<leader>c", ":cd %:h<CR>")

-- Make current file executable
vim.keymap.set("n", "<leader>X", ":silent !chmod +x %<CR>")

-- Split view and execute shell current file
-- Shell
vim.keymap.set("n", "<leader>>", ":w<CR>:set splitright<CR>:vsp temp://%:p<CR><C-\\><C-n>")
-- Shell refresh
vim.keymap.set("n", "<leader>.", ":q<CR>:w<CR>:set splitright<CR>:vsp temp://%:p<CR><C-\\><C-n>")
-- Python
vim.keymap.set("n", "<leader>/", ":w<CR>:set splitright<CR>:vsp temp://python %:p<CR><C-\\><C-n>")
-- Python refresh
vim.keymap.set("n", "<leader>?", ":q<CR>:w<CR>:set splitright<CR>:vsp temp://python %:p<CR><C-\\><C-n>")

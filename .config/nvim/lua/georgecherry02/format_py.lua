-- Formatting
vim.keymap.set("n", "<leader>f", function()
    if vim.bo.filetype == "python" then
        vim.cmd("silent !black %")
    else
        vim.lsp.buf.format { async = true }
    end
end)

local lsp = require("lsp-zero")

lsp.preset("recommended")

lsp.ensure_installed({
    'clang-format',
    'clangd',
    'pyright',
    'rust_analyzer',
})

require('lspconfig').clangd.setup({
    cmd = {
        "clangd",
        "--background-index",
        "--clang-tidy"
    }
})

-- Full LSP setup
lsp.on_attach(function(client, bufnr)
    local opts = { buffer = bufnr, remap = false }

    -- This is hacky and dumb but I couldn't find docs on switch source header in lsp?
    -- Pretty specific for cpp tbf
    vim.keymap.set("n", "gx", ":ClangdSwitchSourceHeader<CR>", opts)
    vim.keymap.set("n", "gd", function() vim.lsp.buf.definition() end, opts)
    vim.keymap.set("n", "gi", function() vim.lsp.buf.implementation() end, opts)
    vim.keymap.set("n", "K", function() vim.lsp.buf.hover() end, opts)
    vim.keymap.set("n", "<leader>vws", function() vim.lsp.buf.workspace_symbol() end, opts)
    vim.keymap.set("n", "<leader>vd", function() vim.diagnostic.open_float() end, opts)
    vim.keymap.set("n", "[d", function() vim.diagnostic.goto_next() end, opts)
    vim.keymap.set("n", "]d", function() vim.diagnostic.goto_prev() end, opts)
    vim.keymap.set("n", "<leader>ca", function() vim.lsp.buf.code_action() end, opts)
    vim.keymap.set("n", "<leader>r", function() vim.lsp.buf.references() end, opts)
    vim.keymap.set("i", "<C-h>", function() vim.lsp.buf.signature_help() end, opts)
end)

lsp.setup()

-- Autocomplete
local cmp = require("cmp")
cmp.setup({
    mapping = {
        ['<CR>'] = cmp.mapping.confirm({ select = true }),
    }
})

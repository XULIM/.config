vim.api.nvim_create_autocmd('LspAttach', {
    callback = function(args)
        local client = vim.lsp.get_client_by_id(args.data.client_id)
        if client.server_capabilities.hoverProvider then
            vim.keymap.set('n', 'K', vim.lsp.buf.hover, { buffer = args.buf })
        end
    end,
})

vim.cmd [[
augroup InitNetrw
    autocmd!
    autocmd VimEnter * if expand("%") == "" | :Ex | endif
augroup end
]]

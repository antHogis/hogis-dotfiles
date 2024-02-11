local lsp_zero = require('lsp-zero')

lsp_zero.on_attach(function(client, bufnr)
  -- see :help lsp-zero-keybindings
  -- to learn the available actions
  lsp_zero.default_keymaps({buffer = bufnr})
end)

local lspconfig = require('lspconfig')
lspconfig.clangd.setup({})
lspconfig.tsserver.setup({})
lspconfig.gopls.setup({})

local cmp = require('cmp')

--cmp.setup({
--  sources = {
--    {name = 'nvim_lsp'},
--  },
--  mapping = cmp.mapping.preset.insert({
--    -- Enter key confirms completion item
--    ['<CR>'] = cmp.mapping.confirm({select = false}),
--
--    -- Ctrl + space triggers completion menu
--    ['<C-Space>'] = cmp.mapping.complete(),
--  }),
--  snippet = {
--    expand = function(args)
--      require('luasnip').lsp_expand(args.body)
--    end,
--  },
--})

cmp.setup({
  sources = {
    {name = 'path'},
    {name = 'nvim_lsp'},
    {name = 'nvim_lua'},
    {name = 'luasnip', keyword_length = 2},
    {name = 'buffer', keyword_length = 3},
  },
  formatting = lsp_zero.cmp_format(),
  mapping = cmp.mapping.preset.insert({
    ['<C-p>'] = cmp.mapping.select_prev_item(cmp_select),
    ['<C-n>'] = cmp.mapping.select_next_item(cmp_select),
    ['<C-y>'] = cmp.mapping.confirm({ select = true }),
    ['<C-Space>'] = cmp.mapping.complete(),
  }),
})

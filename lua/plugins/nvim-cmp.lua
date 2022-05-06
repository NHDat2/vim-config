local cmp = require('cmp')

local lsp_symbols = {
    Text = '   (Text) ',
    Method = '   (Method)',
    Function = '   (Function)',
    Constructor = '   (Constructor)',
    Field = ' ﴲ  (Field)',
    Variable = '[] (Variable)',
    Class = '   (Class)',
    Interface = ' ﰮ  (Interface)',
    Module = '   (Module)',
    Property = ' 襁 (Property)',
    Unit = '   (Unit)',
    Value = '   (Value)',
    Enum = ' 練 (Enum)',
    Keyword = '   (Keyword)',
    Snippet = '   (Snippet)',
    Color = '   (Color)',
    File = '   (File)',
    Reference = '   (Reference)',
    Folder = '   (Folder)',
    EnumMember = '   (EnumMember)',
    Constant = ' ﲀ  (Constant)',
    Struct = ' ﳤ  (Struct)',
    Event = '   (Event)',
    Operator = '   (Operator)',
    TypeParameter = '   (TypeParameter)',
}

cmp.setup({
    snippet = {
        -- REQUIRED - you must specify a snippet engine
        expand = function(args)
            -- vim.fn["vsnip#anonymous"](args.body) -- For `vsnip` users.
            require('luasnip').lsp_expand(args.body) -- For `luasnip` users.
            -- require('snippy').expand_snippet(args.body) -- For `snippy` users.
            -- vim.fn["UltiSnips#Anon"](args.body) -- For `ultisnips` users.
        end,
    },
    formatting = {
        format = function(entry, item)
            item.kind = lsp_symbols[item.kind]
            item.menu = ({
                buffer = '[Buffer]',
                nvim_lsp = '[LSP]',
                luasnip = '[Snippet]',
                neorg = '[Neorg]',
            })[entry.source.name]

            return item
        end,
    },
    mapping = cmp.mapping.preset.insert({
        ['<Tab>'] = {
            i = cmp.mapping.select_next_item()
        }
    }),
    sources = cmp.config.sources({
        { name = 'nvim_lsp' },
        -- { name = 'vsnip' }, -- For vsnip users.
        { name = 'luasnip' }, -- For luasnip users.
        -- { name = 'ultisnips' }, -- For ultisnips users.
        -- { name = 'snippy' }, -- For snippy users.
    }, {
        { name = 'buffer' },
    }),
})

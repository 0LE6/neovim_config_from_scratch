return {
    "neovim/nvim-lspconfig",
    dependencies = {
        {'VonHeikemen/lsp-zero.nvim', branch = 'v3.x'},
        "williamboman/mason.nvim",
        "williamboman/mason-lspconfig.nvim",
        "hrsh7th/cmp-nvim-lsp",
        "hrsh7th/cmp-buffer",
        "hrsh7th/cmp-path",
        "hrsh7th/cmp-cmdline",
        "hrsh7th/nvim-cmp",
        "L3MON4D3/LuaSnip",
        "saadparwaiz1/cmp_luasnip",
        "j-hui/fidget.nvim",
    },

    config = function()
        -- Configuración para obtener info sobre un componente del lenguaje mediante LSP,
        -- posicionas el cursor sobre una palabra y le da a la "e" en modo normal.
        local on_attach = function(client, bufnr)
            vim.api.nvim_buf_set_keymap(bufnr, 'n', 'e', '<cmd>lua vim.lsp.buf.hover()<CR>', {
                noremap = true,
                silent = true,
                desc = 'Show hover information'
            })
        end

        -- #3.
        --local cmp = require('cmp')
        local cmp_lsp = require("cmp_nvim_lsp")
        local capabilities = vim.tbl_deep_extend(
            "force",
            {},
            vim.lsp.protocol.make_client_capabilities(),
            cmp_lsp.default_capabilities())

        -- Copia y pega de https://lsp-zero.netlify.app/v3.x/getting-started.html#automatic-setup
        local lsp_zero = require('lsp-zero')

        lsp_zero.on_attach(function(client, bufnr)
            -- see :help lsp-zero-keybindings
            -- to learn the available actions
            lsp_zero.default_keymaps({buffer = bufnr})
        end)

        -- to learn how to use mason.nvim
        -- read this: https://github.com/VonHeikemen/lsp-zero.nvim/blob/v3.x/doc/md/guide/integrate-with-mason-nvim.md
        require('mason').setup({})
        require('mason-lspconfig').setup({
            -- NOTE: Aquí metemos todos los LSP de los lenguajes que querramos 
            ensure_installed = {
                'rust_analyzer',
                --'tsserver',
                'pyright',
                'lua_ls'

            },
            handlers = {
                function(server_name)
                    require('lspconfig')[server_name].setup({
                        on_attach = on_attach,
                        capabilities = capabilities,
                    })
                end,
            },
        })
    end
}

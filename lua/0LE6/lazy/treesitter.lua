-- Editado sobre copia de: https://github.com/ThePrimeagen/init.lua/blob/master/lua/theprimeagen/lazy/treesitter.lua
return {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    config = function()
        -- NOTE: importante para usar en Windows (quizás se necesite en ciertos casos para funcionar)
        -- https://github.com/nvim-treesitter/nvim-treesitter/issues/5264#issuecomment-1846339757
        -- Especificar el uso de 'clang' para la compilación de los parsers
        --require'nvim-treesitter.install'.compilers = { "clang" } -- descomentar línea en Windows

        require("nvim-treesitter.configs").setup({
            -- Poner los parsers del lenguajes especificos que necesitamos o bien se puede usar "all". 
            ensure_installed = {
                "vimdoc", "javascript", "typescript", "c", "lua", "rust",
                "jsdoc", "bash", "python", "c_sharp", "html", "java",
		"json", "sql", "vim", "xml", "css"
            },

            -- Install parsers synchronously (only applied to `ensure_installed`)
            sync_install = false,

            -- Automatically install missing parsers when entering buffer
            -- Recommendation: set to false if you don"t have `tree-sitter` CLI installed locally
            auto_install = true,

            indent = {
                enable = true
            },

            highlight = {
                -- `false` will disable the whole extension
                enable = true,

                -- Setting this to true will run `:h syntax` and tree-sitter at the same time.
                -- Set this to `true` if you depend on "syntax" being enabled (like for indentation).
                -- Using this option may slow down your editor, and you may see some duplicate highlights.
                -- Instead of true it can also be a list of languages
                additional_vim_regex_highlighting = { "markdown" },
            },
        })

        local treesitter_parser_config = require("nvim-treesitter.parsers").get_parser_configs()
        treesitter_parser_config.templ = {
            install_info = {
                url = "https://github.com/vrischmann/tree-sitter-templ.git",
                files = {"src/parser.c", "src/scanner.c"},
                branch = "master",
            },
        }

        vim.treesitter.language.register("templ", "templ")
    end
}

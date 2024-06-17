-- treesitter java-config

return {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    config = function()
        -- Función para filtrar el PATH y excluir Cygwin
        local function adjust_path()
            local system_path = vim.env.PATH
            local paths = {}
            for path in string.gmatch(system_path, "[^;]+") do
                if not string.find(path, "cygwin") then
                    table.insert(paths, path)
                end
            end
            -- Añadir la ruta de GCC al principio
            table.insert(paths, 1, "C:/Users/PONER_EL_USUARIO_AQUI/scoop/apps/mingw-w64/current/mingw64/bin")
            return table.concat(paths, ";")
        end

        vim.env.PATH = adjust_path()
        vim.env.C_INCLUDE_PATH = "C:/Users/PONER_EL_USUARIO_AQUI/scoop/apps/gcc/current/include"
        vim.env.CPLUS_INCLUDE_PATH = "C:/Users/PONER_EL_USUARIO_AQUI/scoop/apps/gcc/current/include"
        vim.env.LIBCLANG_PATH = "C:/Users/PONER_EL_USUARIO_AQUI/scoop/apps/llvm/current/bin"
        vim.env.LLVM_LIB_DIR = "C:/Users/PONER_EL_USUARIO_AQUI/scoop/apps/llvm/current/lib"

        require'nvim-treesitter.install'.compilers = { "gcc" }

        require("nvim-treesitter.configs").setup({
            ensure_installed = {
                "vimdoc", "javascript", "typescript", "c", "lua", "rust",
                "jsdoc", "bash", "python", "c_sharp", "html", "java",
                "json", "sql", "vim", "xml", "css"
            },
            sync_install = false,
            auto_install = true,
            indent = {
                enable = true
            },
            highlight = {
                enable = true,
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


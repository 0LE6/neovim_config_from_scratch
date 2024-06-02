-- Para poder abrir el terminal dentro de nuestro editor emplearemos el plugin de "toggleterm"
-- https://github.com/akinsho/toggleterm.nvim 

return {
    'akinsho/toggleterm.nvim',

    config = function ()
        require('toggleterm').setup({
            open_mapping = false,
            hide_numbers = true,
            shade_filetypes = {},
            shade_terminals = true,
            shading_factor = 2,
            start_in_insert = true,
            insert_mappings = true,
            persist_size = true,
            direction = 'float',
            close_on_exit = true,
            shell = vim.o.shell,

            -- Creamos una funcion para pasarle al "on_open".
            on_open = function(term)
                -- Deshabilitamos el mapeo de <leader>t dentro del terminal, así no cerramos sin querer la terminal
                --vim.api.nvim_buf_del_keymap(term.bufnr, 't', '<leader>t')
                -- Cerramos el terminal con tecla Esc
                vim.api.nvim_buf_set_keymap(term.bufnr, 't', '<Esc>', '<cmd>close<CR>', {noremap = true, silent = true})
            end,

            --  Función para manejar el cierre.
            on_close = function (term)
                -- por lo que he visto, esto se quedaría vació.
            end,
        })

        -- Mappeo para abrir la terminal cuando estemos en modo normal con un leader + t.
        vim.api.nvim_set_keymap('n', '<leader>t', '<cmd>ToggleTerm<CR>', {noremap = true, silent = true})
    end
}

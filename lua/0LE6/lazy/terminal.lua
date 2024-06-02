-- Para poder abrir el terminal dentro de nuestro editor emplearemos el plugin de "toggleterm"
-- https://github.com/akinsho/toggleterm.nvim 

return {
    'akinsho/toggleterm.nvim',

    config = function ()
        require('toggleterm').setup({
            open_mapping = [[<leader>t]],  -- Mapeo para abrir y cerrar el terminal
            hide_numbers = true,           -- Oculta los números de línea en el terminal
            shade_filetypes = {},
            shade_terminals = true,
            shading_factor = 2,            -- El terminal será un poco más oscuro que la ventana normal
            start_in_insert = true,        -- Comienza en modo insertar
            insert_mappings = true,        -- Permite mapeos en modo insertar
            persist_size = true,
            direction = 'float',           -- Puedes cambiar esto a 'horizontal' o 'vertical'
            close_on_exit = true,          -- Cierra el terminal automáticamente al salir
            shell = vim.o.shell            -- Usa la shell predeterminada de Neovim
        })
    end
}

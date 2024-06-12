-- Integración y pequeña configuración de un plugin para poder comentar/descomentar líneas
return {
    'numToStr/Comment.nvim',

    config = function ()
        require('Comment').setup{

            -- Primero desactivamos los mappeos predeterminados
            mappings = {
                basic = false,
                extra = false,
            },
        }

        -- Comentar/descomentar con leader + c en modo N
        vim.keymap.set('n', '<leader>c', function ()
            require('Comment.api').toggle.linewise.current()
        end, { noremap = false, silent = true })

        -- Comentar/descomentar el bloque seleccionado con leader + c en modo V
        vim.keymap.set('v', '<leader>c', function()
            -- Esta configuración es "más peculiar", porque lo que hacemos es mediante una variable que sera una salida del modo V al modo N,
            local esc = vim.api.nvim_replace_termcodes('<ESC>', true, false, true)
            vim.api.nvim_feedkeys(esc, 'nx', false)
             -- pasarle todas las lineas seleccionadas y con la misma comanda que la anterior de comentar una línea, se comentarán/descomentarán las seleccionadas.
            require('Comment.api').locked('toggle.linewise')(vim.fn.visualmode())
        end, { noremap = true, silent = true })
    end
}

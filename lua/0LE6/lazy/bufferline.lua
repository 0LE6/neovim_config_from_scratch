return {
    'akinsho/bufferline.nvim',
    version = "*",
    dependencies = 'nvim-tree/nvim-web-devicons',

    config = function ()
        require('bufferline').setup{
            options = {
                numbers = "none",
                close_command = "bdelete! %d", -- cerramos la tab con un buffer delete -> :bd
                right_mouse_command = "bdelete! %d",
                left_mouse_command = "buffer %d",
                middle_mouse_command = nil,
                indicator = {
                  icon = '▎', -- Este es un ícono minimalista para el buffer activo
                },
                buffer_close_icon = '',
                modified_icon = '●',
                close_icon = '',
                show_close_icon = false,
                show_buffer_close_icons = false,
                separator_style = "thin",
                always_show_bufferline = false,
            }
        }
    end
}

-- Configuración básica de Neovim
-- Epleando Lua como lenguaje.

-- Usar números de línea, número relativo y uso de ratón
vim.o.number = true
vim.o.relativenumber = true
vim.o.mouse = 'a'

-- Habilitar resaltado de sintaxis
vim.cmd('syntax on')

-- Usar espacio en vez de tabulación
vim.o.expandtab = true
vim.o.tabstop = 4
vim.o.shiftwidth = 4

-- Habilitar el portapapeles del sistema
vim.o.clipboard = 'unnamedplus'

-- Mostrar líneas largas de manera inteligible
vim.o.wrap = true
vim.o.linebreak = true

-- Configuración de plugins con vim-plug
-- Primero asegúrate de que vim-plug está instalado

-- local Plug = vim.fn['plug#']

-- vim.call('plug#begin', '~/.config/nvim/plugged')

-- Aquí puedes agregar tus plugins, por ejemplo:
-- Plug 'junegunn/vim-easy-align'
-- Plug 'tpope/vim-commentary'

-- vim.call('peug#end')

-- Termina el bloque


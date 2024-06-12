-- Asignamos como tecla líder el "space"
vim.g.mapleader = " "

-- NOTE: :Ex abre el explorador de archivos.
-- Mientras estoy en modo "Normal", si presiono la tecla líder seguido de "ew" ejecuta :Ex
vim.keymap.set("n", "<leader>ew", vim.cmd.Ex)

-- Configuración para permitir la indentación con Tab en modo visual
-- En modo V -> si selecciono linea/s y hago Tab o Shift+Tab, entonces tabulamos hacia delante o atrás.
vim.keymap.set('v', '<Tab>', '>gv', {noremap = true, silent = true})
vim.keymap.set('v', '<S-Tab>', '<gv', {noremap = true, silent = true})

-- Mapeo para avanzar a la siguiente pestaña con Tab
vim.keymap.set('n', '<Tab>', ':tabnext<CR>', {noremap = true, silent = true})

-- Mapeo para ir a la pestaña anterior con Shift+Tab
vim.keymap.set('n', '<S-Tab>', ':tabprevious<CR>', {noremap = true, silent = true})

-- Añadimos el deshacer y rehacer (el típico ctrl z & ctrl y) en modo I 
-- Warning: no va char x por, sino modificación x modificación entre modo I & modo N
vim.keymap.set('i', '<C-z>', '<C-g>u<C-o>u', {noremap = true, silent = true} )
vim.keymap.set('i', '<C-y>', '<C-g>u<C-o><C-r>', {noremap = true, silent = true} )

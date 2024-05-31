-- Asignamos como tecla líder el "space"
vim.g.mapleader = " "

-- NOTE: :Ex abre el explorador de archivos.
-- Mientras estoy en modo "Normal", si presiono la tecla líde seguido de pv ejecuta :Ex
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

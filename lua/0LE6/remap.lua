-- Asignamos como tecla líder el "space"
vim.g.mapleader = " "

-- NOTE: :Ex abre el explorador de archivos.
-- Mientras estoy en modo "Normal", si presiono la tecla líder seguido de "ew" ejecuta :Ex
vim.keymap.set("n", "<leader>ew", vim.cmd.Ex)


-- Con el siguiente código clonaremos y añadiremos "lazy.nvim" como nuestro gestor de plugins.
-- https://github.com/folke/lazy.nvim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

-- Con este require le decimos a lazy que para hacer el setup vaya al path que le indicamos.
-- cuando tengamos esto, haremos un :so en modo normal, saldremos con un :wq y al entrar de nuevo se instalaran los plugins que le especifiquemos al igual que el propio lazy.
require("lazy").setup({
    spec = "0LE6.lazy",
    change_detection = { notify = false }
})

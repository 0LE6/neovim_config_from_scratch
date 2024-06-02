-- Aquí realizamos la configuración correspondiente para tener la versión "cool" de NerdTree para NeoVim, que consiste básicamente en la disposición visual complementaria de la organización de carpetas y sus contenidos de archivos.
--
-- https://github.com/nvim-tree/nvim-tree.lua/wiki/Installation
return {
	'nvim-tree/nvim-tree.lua',
	version = '*',
	lazy = false,
	dependencies = {
		'nvim-tree/nvim-web-devicons',
	},

	config = function()
		require('nvim-tree').setup {}
	end
}

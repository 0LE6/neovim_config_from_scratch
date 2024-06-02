-- Aquí realizamos la configuración correspondiente para tener la versión "cool" de NerdTree para NeoVim, que consiste básicamente en la disposición visual complementaria de la organización de carpetas y sus contenidos de archivos.
--
-- https://github.com/nvim-tree/nvim-tree.lua/wiki/Installation

local function my_on_attach(bufnr)
	local api = require 'nvim-tree.api'

	local function opts(desc)
		return {
			desc = 'nvim-tree: ' .. desc,
			buffer = bufnr, 
			noremap = true,
			silent = true, 
			nowait = true
		}
	end

	-- El mappeo de los shortcuts personalizados se realizan en base a su API
	-- Presionar el leader (espacio) junto a una "a" -> lo abrimos
	vim.keymap.set('n', '<leader>a', api.node.open.edit(), opts('Open'))
	
	-- Presionar el leader (espacio) junto a una "q" -> lo... quitamos lol
	vim.keymap.set('n', '<leader>q', api.tree.close(), opts('Close'))
	-- ejemplo	
	-- vim.keymap.set('n', '<C-t>', api.tree.change_root_to_parent,        opts('Up'))
end



return {
	'nvim-tree/nvim-tree.lua',
	lazy = false,
	dependencies = {
		'nvim-tree/nvim-web-devicons',
	},

	config = function()
		require('nvim-tree').setup {
			-- Le pasamos la configuración que realizamos antes
			on_attach = my_on_attach,
		}
	end
}

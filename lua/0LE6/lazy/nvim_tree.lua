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
    
    -- Abrir un file, con un "Enter" o un "doble click" con el mouse sobre él.
	vim.keymap.set('n', '<CR>', api.node.open.edit, opts('Open'))
    vim.keymap.set('n', '<2-LeftMouse>', api.node.open.edit, opts('Open'))


    -- Presionar el leader (espacio) junto a una "a" -> lo abrimos
    --vim.keymap.set('n', '<leader>a', api.tree.open(), opts)
	
	-- Presionar el leader (espacio) junto a una "q" -> lo... quitamos lol
	--vim.keymap.set('n', '<leader>q', api.tree.close, opts('Close'))

    vim.keymap.set('n', '<leader>q', function()
        api.tree.toggle()
    end)
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

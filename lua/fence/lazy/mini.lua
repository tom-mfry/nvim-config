-- lua/fence/plugins/mini.lua
return {
	{
		'echasnovski/mini.nvim',
		enabled = true,
		config = function()
			local statusline = require 'mini.statusline'
			statusline.setup { use_icons = true }

			local files = require 'mini.files'
			files.setup()
		end
	},
}

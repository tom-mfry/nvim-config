-- plugins/telescope.lua:
return {
    'nvim-telescope/telescope.nvim', tag = '0.1.8',
-- or                              , branch = '0.1.x',
      dependencies = { 
	      'nvim-lua/plenary.nvim'
      },

	config = function()
		-- initialise
		require('telescope').setup({})

		-- initialise builtin pickers
		local builtin = require('telescope.builtin')

		-- Find files in project directory
		vim.keymap.set('n', '<leader>pf', builtin.find_files, {})

		-- Find files currently tracked by git
		vim.keymap.set('n', '<leader>pgf', builtin.git_files, {})

		-- Search for occurrences of the word under the cursor
		vim.keymap.set('n', '<leader>pws', function()
		    local word = vim.fn.expand("<cword>")
		    builtin.grep_string({ search = word })
		end)

		-- Search for occurrences of the full word, including special characters, under the cursor
		vim.keymap.set('n', '<leader>pWs', function()
		    local word = vim.fn.expand("<cWORD>")
		    builtin.grep_string({ search = word })
		end)

		-- Prompt for input and search for occorences of the input string.
		vim.keymap.set('n', '<leader>ps', function()
		    builtin.grep_string({ search = vim.fn.input("Grep > ") })
		end)

		-- Search Neovim help tags for documentation
		vim.keymap.set('n', '<leader>vh', builtin.help_tags, {})
	    end
    }

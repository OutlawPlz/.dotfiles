return {
    'nvim-telescope/telescope.nvim', 
    tag = '0.1.5',
      dependencies = { 
                'nvim-lua/plenary.nvim',
                "nvim-telescope/telescope-ui-select.nvim"
        },
      keys = {
    { '<leader>ff', function() require('telescope.builtin').find_files() end },
    { '<leader>fF', function() require('telescope.builtin').find_files({ no_ignore = true, prompt_title = 'All Files' }) end },
    { '<leader>fb', function() require('telescope.builtin').buffers() end },
  },
  config = function ()
    local actions = require('telescope.actions')

        local telescope = require("telescope")

    telescope.setup({
                        extension = {
                                ["ui-select"] = {
                                        require("telescope.themes").get_dropdown
                                }
                        },
      defaults = {
        mappings = {
          i = {
            ['<esc>'] = actions.close,
          },
        },
        file_ignore_patterns = { '.git/' },
      },
      pickers = {
        buffers = {
          previewer = false,
          layout_config = { width = 30 },
	    theme = "dropdown",
          },
        },
    })
                telescope.load_extension("ui-select")
  end,
}

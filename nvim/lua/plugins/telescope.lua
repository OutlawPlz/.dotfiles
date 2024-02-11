return {
    'nvim-telescope/telescope.nvim', 
    tag = '0.1.5',
      dependencies = { 'nvim-lua/plenary.nvim' },
      keys = {
    { '<leader>f', function() require('telescope.builtin').find_files() end },
    { '<leader>F', function() require('telescope.builtin').find_files({ no_ignore = true, prompt_title = 'All Files' }) end },
    { '<leader>b', function() require('telescope.builtin').buffers() end },
  },
  config = function ()
    local actions = require('telescope.actions')

    require('telescope').setup({
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
  end,
}

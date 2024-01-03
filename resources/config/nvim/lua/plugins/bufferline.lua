return { 
  'akinsho/bufferline.nvim',
  version = "*",
  dependencies = { 'nvim-tree/nvim-web-devicons' },
  lazy = false,
  config = {
    options = {
      mode = 'buffers',
      numbers = 'ordinal',
      separator_style = 'slope',
      hover = {
        enabled = true,
        delay = 150,
        reveal = {'close'}
      },
      offsets = {
        {
          filetype = "NvimTree",
          text = "File Explorer",
          highlight = "Directory",
          separator = true,
        }
      },
    },
    highlights = {
      buffer_selected = {
        italic = false
      },
      indicator_selected = {
        italic = false
      }
    },
  },
}

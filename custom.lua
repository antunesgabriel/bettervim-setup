require("toggleterm").setup {
  size = 13,
  open_mapping = [[<c-\>]],
  shade_filetypes = {},
  shade_terminals = true,
  shading_factor = '1',
  start_in_insert = true,
  persist_size = true,
  direction = 'float',
  auto_scroll = true,
  float_opts = {
    -- The border key is almost the same as 'nvim_open_win'
    -- see :h nvim_open_win for details on borders however
    -- the 'curved' border is a custom border type
    -- not natively supported but implemented in this plugin.
    border = 'curved',
    -- like `size`, width and height can be a number or function which is passed the current terminal
    width = 100,
    height = 30,
    winblend = 3,
  },
  winbar = {
    enabled = false,
    name_formatter = function(term) --  term: Terminal
      return term.name
    end
  },
}

require("gopher.dap").setup()

require('nvim-ts-autotag').setup({
  filetypes = { "html", "xml", "tsx", "jsx" },
})

require 'colorizer'.setup({
  '*',    -- Highlight all files, but customize some others.
  '!vim', -- Exclude vim from highlighting.
}, { css_fn = true, names = true })

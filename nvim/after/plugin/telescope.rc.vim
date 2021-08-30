if !exists('g:loaded_telescope') | finish | endif

nnoremap <silent> <leader>pf <cmd>Telescope find_files<cr>
nnoremap <silent> <leader>ps <cmd>Telescope live_grep<cr>
nnoremap <silent> <leader>pb <cmd>Telescope buffers<cr>
nnoremap <silent> <leader>ph <cmd>Telescope help_tags<cr>

lua << EOF
local actions = require('telescope.actions')
-- Global remapping
------------------------------
require('telescope').setup{
  defaults = {
    mappings = {
      n = {
        ["q"] = actions.close
      },
    },
  }
}
EOF

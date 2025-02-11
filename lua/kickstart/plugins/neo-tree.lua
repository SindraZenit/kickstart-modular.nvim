-- Neo-tree is a Neovim plugin to browse the file system
-- https://github.com/nvim-neo-tree/neo-tree.nvim

return {
  'nvim-neo-tree/neo-tree.nvim',
  version = '*',
  dependencies = {
    'nvim-lua/plenary.nvim',
    'nvim-tree/nvim-web-devicons', -- not strictly required, but recommended
    'MunifTanjim/nui.nvim',
  },
  cmd = 'Neotree',
  keys = {
    { '\\', ':Neotree reveal<CR>', desc = 'NeoTree reveal', silent = true },
  },
  opts = {
    filesystem = {
      filtered_items = {
        visible = true,
        hide_dotfiles = false,
        hide_gitignored = true,
      },
      -- Migliora la visualizzazione della struttura directory
      indent = {
        indent_size = 2,
        padding = 1,
        with_markers = true,
        indent_marker = '│',
        last_indent_marker = '└',
        highlight = 'NeoTreeIndentMarker',
      },
      -- Icone più chiare per cartelle e file
      icon = {
        folder_closed = '',
        folder_open = '',
        folder_empty = '󰜌',
      },
      -- Indicatori di stato Git essenziali
      git_status = {
        symbols = {
          modified = '', -- File modificato
          added = '', -- File aggiunto
          deleted = '✖', -- File eliminato
        },
      },
      window = {
        position = 'left',
        width = 30, -- Larghezza ridotta per una vista più compatta
        mappings = {
          ['\\'] = 'close_window',
        },
      },
    },
    -- Mostra le modifiche non salvate
    modified = {
      symbol = '●',
      highlight = 'NeoTreeModified',
    },
  },
}

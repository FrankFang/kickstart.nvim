return {
  'rmagatti/auto-session',
  lazy = false,
  enabled = false,
  keys = {
    { '<leader>wr', '<cmd>AutoSession search<CR>', desc = 'Session sea[r]ch' },
    { '<leader>ws', '<cmd>AutoSession save<CR>', desc = '[S]ave session' },
    { '<leader>wa', '<cmd>AutoSession toggle<CR>', desc = 'Toggle [a]utosave' },
  },

  ---enables autocomplete for opts
  ---@module "auto-session"
  ---@type AutoSession.Config
  opts = {
    suppressed_dirs = { '~/', '~/repos', '~/downloads/', '/' },
    -- log_level = 'debug',
  },
}

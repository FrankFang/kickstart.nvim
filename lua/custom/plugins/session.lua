return {
  'folke/persistence.nvim',
  event = 'BufReadPre', -- this will only start session saving when an actual file was opened
  opts = {
    -- add any custom options here
  },
  config = function()
    -- https://github.com/folke/persistence.nvim/issues/80#issuecomment-2506424807
    vim.opt.sessionoptions = { 'buffers', 'curdir', 'tabpages', 'winsize', 'help', 'globals', 'skiprtp', 'folds' }

    require('persistence').setup {
      autostart = true,
    }

    -- load the session for the current directory
    vim.keymap.set('n', '<leader>qs', function()
      require('persistence').load()
    end, { desc = 'Load [S]ession' })

    -- select a session to load
    vim.keymap.set('n', '<leader>qS', function()
      require('persistence').select()
    end, { desc = '[S]elect a session to load' })

    -- load the last session
    vim.keymap.set('n', '<leader>ql', function()
      require('persistence').load { last = true }
    end, { desc = 'load the [L]ast session' })

    -- stop Persistence => session won't be saved on exit
    vim.keymap.set('n', '<leader>qt', function()
      require('persistence').stop()
    end, { desc = 'S[t]op' })
  end,
}

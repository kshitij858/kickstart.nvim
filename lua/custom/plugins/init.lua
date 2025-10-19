-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information
return {
  'folke/persistence.nvim',
  event = 'BufReadPre', -- this will only start session saving when an actual file was opened
  opts = {
    -- add any custom options here
  },
  keys = {
    -- load the session for the current directory
    {
      '<leader>qs',
      function()
        require('persistence').load()
      end,
      desc = 'Persistence: Load session for current directory',
    },
    -- select a session to load
    {
      '<leader>qS',
      function()
        require('persistence').select()
      end,
      desc = 'Persistence: Select session to load',
    },
    -- load the last session
    {
      '<leader>ql',
      function()
        require('persistence').load { last = true }
      end,
      desc = 'Persistence: Load last session',
    },
    -- stop Persistence => session won't be saved on exit
    {
      '<leader>qd',
      function()
        require('persistence').stop()
      end,
      desc = 'Persistence: Stop session saving',
    },
  },
}

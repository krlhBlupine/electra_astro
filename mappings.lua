-- Mapping data with "desc" stored directly by vim.keymap.set().
--
-- Please use this mappings table to set keyboard mapping since this is the
-- lower level configuration and more robust one. (which-key will
-- automatically pick-up stored data by this setting.)
return {
  -- first key is the mode
  n = {
    -- second key is the lefthand side of the map

    -- navigate buffer tabs with `H` and `L`
    L = {
      function() require("astronvim.utils.buffer").nav(vim.v.count > 0 and vim.v.count or 1) end,
      desc = "Next buffer",
    },
    H = {
      function() require("astronvim.utils.buffer").nav(-(vim.v.count > 0 and vim.v.count or 1)) end,
      desc = "Previous buffer",
    },

    ["<leader>s"] = {
        name = "sc-im",
        c = { ":lua require('sc-im').open_in_scim()<cr>", "Open table in sc-im" },
        p = { ":lua require('sc-im').open_in_scim(false)<cr>", "Open plain table in sc-im" },
        t = { ":lua require('sc-im').toggle(true)<cr>", "Toggle sc-im link format" },
        r = { ":lua require('sc-im').rename()<cr>", "Rename linked sc-im file" },
        x = { desc = 'Close sc-im' }
    },

    -- Pomodoro!
    ["<leader>P"] = { name = "Pomodoro",
        S = { ":PomodoroStatus<cr>", "Pomodoro Status"},
        i  = { ":PomodoroStart<cr><cr>", "Start Pomodoro"},
        s = { ":PomodoroStop<cr>", "Stop Pomodoro"},
      },

  -- Telescope
  ["<leader>fe"] = { "<cmd>:ZkNotes<cr>", desc = "Find zettelkastin entries"},
  ["<leader>fT"] = { function() require("telescope.builtin").colorscheme { enable_preview = true } end, desc = "Find themes" },
  ["<leader>ft"] = { "<cmd>:ZkTags<cr>", desc = "Find tags"},

  -- Navigation
  ["<leader>N"] = { name = "Navigation",
      o = { ":ZkCd<cr>", "Navigate to Notebook"},
      h = { ":cd<cr>", "Navigate Home"},
      d = { ":ZkCd<cr>:cd daily<cr>", "Navigate to Daily Jounrnal"},
    },

  -- New files (Zettelkastin)
    ["<leader>n"] = {name = "New File",
      n = { "<cmd>enew<cr>", "Blank"},
      z = { "<Cmd>ZkNew {title = vim.fn.input('Title: '), template = vim.fn.input('Template: ')..'.md' }<CR>", "Zettelkastin"},
      d = { "<cmd>ZkNew {dir = 'daily'}<cr>", "New daily note"},
      i = { "<cmd>:Template vim.fn.input('Template: ')<cr>", 'Insert Template'},
  },

    -- mappings seen under group name "Buffer"
    ["<leader>bD"] = {
      function()
        require("astronvim.utils.status").heirline.buffer_picker(
          function(bufnr) require("astronvim.utils.buffer").close(bufnr) end
        )
      end,
      desc = "Pick to close",
    },
    -- tables with the `name` key will be registered with which-key if it's installed
    -- this is useful for naming menus
    ["<leader>b"] = { name = "Buffers" },
    -- quick save
    -- ["<C-s>"] = { ":w!<cr>", desc = "Save File" },  -- change description but the same command
  },
  t = {
    ["<leader>sx"] = {
        function()
          require('sc-im').close()
          end,
        desc = "Close sc-im",
    },
    -- setting a mapping to false will disable it
    -- ["<esc>"] = false,
  }
}

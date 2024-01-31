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
    -- L = {
    --   function() require("astronvim.utils.buffer").nav(vim.v.count > 0 and vim.v.count or 1) end,
    --   desc = "Next buffer",
    -- },
    -- H = {
    --   function() require("astronvim.utils.buffer").nav(-(vim.v.count > 0 and vim.v.count or 1)) end,
    --   desc = "Previous buffer",
    -- },

    ["<leader>P"] = { ":PencilToggle<cr>", desc = 'Wrap text'},

  -- Pomodoro!
  ["<leader>m"] = { name = "Pomodoro"},
  ["<leader>mS"] = { ":PomodoroStatus<cr>", desc = "Pomodoro Status"},
  ["<leader>mm"] = { ":PomodoroStart<cr><cr>", desc = "Start Pomodoro"},
  ["<leader>ms"] = { ":PomodoroStop<cr>", desc = "Stop Pomodoro"},

  -- YAML
  ["<leader>fy"] = { ":YAMLTelescope<cr>", desc = "Find Frontmatter"},


  -- New files (Zettelkastin)
    ["<leader>n"] = {name = "New File"},
    ["<leader>nn"] = { "<cmd>enew<cr>", desc = "Blank"},
    ["<leader>nz"] = { ":ZkNew<cr>", desc = "Unique"},
    ["<leader>ni"] = { ":Template ", desc = 'Insert Template'},
    ["<leader>nt"] = { ":TemProject ", desc = 'From Template'},

  -- Zettelkastin browing
    ["<leader>zb"] = { ":ZkBrowse<cr>", desc = "Browse unique notes"},

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
    -- setting a mapping to false will disable it
    -- ["<esc>"] = false,
  },
}

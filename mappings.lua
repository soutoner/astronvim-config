-- Mapping data with "desc" stored directly by vim.keymap.set().
--
-- Please use this mappings table to set keyboard mapping since this is the
-- lower level configuration and more robust one. (which-key will
-- automatically pick-up stored data by this setting.)
return {
  -- first key is the mode
  n = {
    -- second key is the lefthand side of the map
    -- mappings seen under group name "Buffer"
    ["<leader>bn"] = { "<cmd>tabnew<cr>", desc = "New tab" },
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
    ["<leader>w"] = { ":update<CR>')", desc = "[W]rite file", silent = true },
    -- J from the beginning of the line
    ["J"] = { "mzJ`z" },
    -- Centered moving
    ["<c-d>"] = { "<c-d>zz" },
    ["<c-u>"] = { "<c-u>zz" },
    ["n"] = { "nzzzv" },
    ["N"] = { "Nzzzv" },
    -- vim-fugitive
    ["<leader>gs"] = { ":Git<CR>", desc = { "[G]it [S]tatus" } },
  },
  v = {
    -- Move lines around
    ["J"] = { ":m '>+1<CR>gv=gv" },
    ["K"] = { ":m '<-2<CR>gv=gv" },
  },
  t = {
    -- setting a mapping to false will disable it
    -- ["<esc>"] = false,
  },
}

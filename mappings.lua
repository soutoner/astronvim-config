local telescope_builtin = require "telescope.builtin"
local smart_splits = require "smart-splits"

return {
  n = {
    -- Buffers
    ["<leader>b"] = { name = "Buffers" },
    ["<leader>bn"] = { "<cmd>tabnew<cr>", desc = "New tab" },
    ["<leader>bD"] = {
      function()
        require("astronvim.utils.status").heirline.buffer_picker(
          function(bufnr) require("astronvim.utils.buffer").close(bufnr) end
        )
      end,
      desc = "Pick to close",
    },
    -- Others
    ["<leader>w"] = { "<cmd>update<cr>", desc = "[W]rite file", silent = true },
    ["J"] = { "mzJ`z" }, -- J from the beginning of the line
    -- Centered moving
    ["<c-d>"] = { "<c-d>zz" },
    ["<c-u>"] = { "<c-u>zz" },
    ["n"] = { "nzzzv" },
    ["N"] = { "Nzzzv" },
    -- vim-fugitive
    ["<leader>gs"] = { "<cmd>Git<cr>", desc = { "[G]it [S]tatus" } },
    -- telescope
    ["<leader>lD"] = false,
    ["<leader>f'"] = false,
    ["<leader>sm"] = { telescope_builtin.marks, desc = "[S]earch [M]arks" },
    ["<leader>sd"] = { telescope_builtin.diagnostics, desc = "[S]earch [D]iagnostics" },
    ["<leader>gt"] = false,
    ["<leader>tgs"] = { telescope_builtin.git_status, desc = "[T]elescope [G]it [S]tatus" },
    ["<leader>f<cr>"] = false,
    ["<leader>s<cr>"] = { telescope_builtin.resume, desc = "Resume [S]earch" },
    ["<leader>/"] = {
      function()
        -- You can pass additional configuration to telescope to change theme, layout, etc.
        telescope_builtin.current_buffer_fuzzy_find(require("telescope.themes").get_dropdown {
          winblend = 10,
          previewer = false,
        })
      end,
      desc = "[/] Fuzzily search in current buffer",
    },
    ["<C-P>"] = { telescope_builtin.find_files, desc = "Fuzzily search files" },
    ["<C-f>"] = { telescope_builtin.live_grep, desc = "Search by grep" },
    -- neo-tree
    ["<leader>o"] = false,
    ["<leader>e"] = false,
    ["<leader>vt"] = { "<CMD>Neotree show filesystem reveal left toggle<CR>", desc = "[V]iew file [t]ree" },
    ["<leader>ft"] = { "<CMD>Neotree focus filesystem reveal left<CR>", desc = "[F]iew file [t]ree" },
    ["<leader>vb"] = { "<CMD>Neotree toggle show buffers right<CR>", desc = "[V]iew [b]buffers" },
    ["<leader>vg"] = { "<CMD>Neotree float git_status<CR>", desc = "[V]iew [g]it tree" },
    -- smart-splits
    ["<M-Left>"] = { smart_splits.move_cursor_left },
    ["<M-Up>"] = { smart_splits.move_cursor_up },
    ["<lt><M-Down>"] = false,
    ["<M-Down>"] = { smart_splits.move_cursor_down },
    ["<M-Right>"] = { smart_splits.move_cursor_right },
    -- splits tmux like
    ["<C-W>-"] = { "<cmd>split<cr>", desc = "[-] Horizontal split" },
    ["<C-W>\\"] = { "<cmd>vsplit<cr>", desc = "[\\] Vertical split" },
  },
  v = {
    -- Move lines around
    ["J"] = { ":m '>+1<CR>gv=gv" },
    ["K"] = { ":m '<-2<CR>gv=gv" },
    -- Telescope
    ["<C-F>"] = {
      function()
        vim.cmd.normal "y"
        require("telescope.builtin").grep_string { search = vim.fn.getreg "0" }
      end,
      desc = "Search current visual selection",
    },
  },
  t = {
    -- setting a mapping to false will disable it
    -- ["<esc>"] = false,
  },
}
